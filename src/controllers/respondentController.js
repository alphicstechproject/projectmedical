const respondentModel = require("../models/respondentModel");
const mongoose = require('mongoose');
const { isValidMobile } = require("../validations/validation");



const createRespondent = async function (req, res) {
    try {
        const data = req.body
        const file = req.files

        if (Object.keys(data).length == 0 && typeof (file) == 'undefined') return res.status(400).send({ status: false, message: "Please provide data" })

        let createdata = await respondentModel.create(data)
        return res.status(201).send({ status: true, message: "Respondend data created", data: createdata })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
};

const getRespondent = async (req, res) => {
    try {
        let filter = { isDeleted: false }
        let allData = await respondentModel.find(filter)
        return res.status(200).send({ status: true, message: "RESPONDENT DETAILS", data: allData })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
};

const getRespondentById = async (req, res) => {
    try {
        const respondentId = req.params.respondentId;
        if (!mongoose.Types.ObjectId.isValid(respondentId)) {
            return res.status(400).send({ status: false, message: " PLEASE ENTER CORRECT RESPONDENT ID" })
        }
        const findRespondentIdInDb = await respondentModel.findById(respondentId)
        if (!findRespondentIdInDb) {
            return res.status(400).send({ status: false, message: "THIS RESPONDENT IS NOT PRESENT IN THE DATABASE" })
        }
        if (findRespondentIdInDb.isDeleted == true) {
            return res.status(400).send({ status: false, message: " THIS RESPONDENT IS ALREADY DELETED PLEASE CREATE A NEW ONE" })
        }
        return res.status(200).send({ status: true, message: "RESPONDENT PROFILE DETAILS", data: findRespondentIdInDb })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
};

const updateRespondent = async function (req, res) {
    try {
        let data = req.body
        if (Object.keys(data).length == 0) return res.status(400).send({ status: false, message: "Please Enter data to update the Respondent" })
        const { aadhar_no, creation_date, respondent_name, mobile } = data;

        if (aadhar_no === "") return res.status(400).send({ status: false, message: "you can't update aadhar no with empty data" })
        if (creation_date === "") return res.status(400).send({ status: false, message: "you can't update creation date with empty data" })
        if (respondent_name === "") return res.status(400).send({ status: false, message: "you can't update respondent_name with empty data" })
        if (mobile === "") return res.status(400).send({ status: false, message: "you can't update mobile with empty data" })

        if (mobile) {
            if (!isValidMobile(mobile)) return res.status(400).send({ status: false, message: "please provide Valid mobile Number with 10 digits starts with 6||7||8||9" })

            if (await respondentModel.findOne({ mobile })) return res.status(400).send({ status: false, message: "This mobile no. is already Registered Please give another mobile no." })
        }

        let updatedata = await respondentModel.findByIdAndUpdate(
            { _id: req.params.respondentId },
            { $set: data },
            { new: true }
        )
        return res.status(200).send({ status: true, message: "data updated successfully", data: updatedata })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
}

const deleteRespondent = async function (req, res) {
    try {
        const respondentId = req.params.respondentId;
        if (!mongoose.Types.ObjectId.isValid(respondentId)) {
            return res
                .status(400)
                .send({ status: false, message: "Invalid respondent id" });
        }

        const respondentById = await respondentModel.findOne({
            _id: respondentId,
            isDeleted: false,
            deletedAt: null,
        });

        if (!respondentById) {
            return res.status(404).send({
                status: false,
                message: "No respondent found by this respondent id",
            });
        }

        await respondentModel.findOneAndUpdate(
            { _id: respondentId },
            { $set: { isDeleted: true, deletedAt: Date.now() } },
            { new: true }
        );

        return res
            .status(200)
            .send({ status: true, message: "Respondent successfully deleted" });
    } catch (error) {
        return res.status(500).send({ status: false, error: error.message });
    }
}



module.exports = { createRespondent, getRespondent, getRespondentById, updateRespondent, deleteRespondent }
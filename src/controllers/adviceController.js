const adviceModel = require("../models/adviceModel");
const mongoose = require('mongoose');



const createAdvice = async function (req, res) {
    try {
        const data = req.body
        const file = req.files

        if (Object.keys(data).length == 0 && typeof (file) == 'undefined') return res.status(400).send({ status: false, message: "Please provide data" })

        let createdata = await adviceModel.create(data)
        return res.status(201).send({ status: true, message: "Advice created", data: createdata })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
};

const getAdviceById = async (req, res) => {
    try {
        const adviceId = req.params.adviceId;
        if (!mongoose.Types.ObjectId.isValid(adviceId)) {
            return res.status(400).send({ status: false, message: " PLEASE ENTER CORRECT ADVICE ID" })
        }
        const findAdviceIdInDb = await adviceModel.findById(adviceId)
        if (!findAdviceIdInDb) {
            return res.status(400).send({ status: false, message: "THIS ADVICE IS NOT PRESENT IN THE DATABASE" })
        }
        return res.status(200).send({ status: true, message: "ADVICE PROFILE DETAILS", data: findAdviceIdInDb })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
};

const updateAdvice = async function (req, res) {
    try {
        let data = req.body
        if (Object.keys(data).length == 0) return res.status(400).send({ status: false, message: "Please Enter data to update the Advice" })
        const { respondent_title, anemia_stage, description } = data;

        if (respondent_title === "") return res.status(400).send({ status: false, message: "you can't update respondent title with empty data" })
        if (anemia_stage === "") return res.status(400).send({ status: false, message: "you can't update anemia stage with empty data" })
        if (description === "") return res.status(400).send({ status: false, message: "you can't update description with empty data" })
        

        let updatedata = await adviceModel.findByIdAndUpdate(
            { _id: req.params.adviceId },
            { $set: data },
            { new: true }
        )
        return res.status(200).send({ status: true, message: "data updated successfully", data: updatedata })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
}



module.exports = { createAdvice, getAdviceById, updateAdvice }
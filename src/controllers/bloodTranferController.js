const bloodTranferModel = require("../models/bloodTranferModel");
const mongoose = require('mongoose');



const createBloodTranfer = async function (req, res) {
    try {
        const data = req.body
        const file = req.files

        if (Object.keys(data).length == 0 && typeof (file) == 'undefined') return res.status(400).send({ status: false, message: "Please provide data" })

        let createdata = await bloodTranferModel.create(data)
        return res.status(201).send({ status: true, message: "Blood Transfer data created", data: createdata })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
};

const getBloodTranferData = async (req, res) => {
    try {
        let filter = { isDeleted: false }
        let allData = await bloodTranferModel.find(filter)
        return res.status(200).send({ status: true, message: "BLOODTRANFER DETAILS", data: allData })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
};

const getBloodTranferDataById = async (req, res) => {
    try {
        const screeningId = req.params.bloodTranferId;
        if (!mongoose.Types.ObjectId.isValid(screeningId)) {
            return res.status(400).send({ status: false, message: " PLEASE ENTER CORRECT SCREENING ID" })
        }
        const findBloodTranferIdInDb = await bloodTranferModel.find({ screening_id: screeningId })
        if (!findBloodTranferIdInDb) {
            return res.status(400).send({ status: false, message: "THIS SCREENING IS NOT PRESENT IN THE DATABASE" })
        }
        if (findBloodTranferIdInDb.isDeleted == true) {
            return res.status(400).send({ status: false, message: " THIS SCREENING IS ALREADY DELETED PLEASE CREATE A NEW ONE" })
        }
        return res.status(200).send({ status: true, message: "SCREENING PROFILE DETAILS", data: findBloodTranferIdInDb })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
};

const updateBloodTranfer = async function (req, res) {
    try {
        let data = req.body
        if (Object.keys(data).length == 0) return res.status(400).send({ status: false, message: "Please Enter data to update the BloodTranfer" })
        const { screening_id, hostpital_name, transfer_date, role, unit, adviced_id, status } = data;

        if (screening_id === "") return res.status(400).send({ status: false, message: "you can't update screening id with empty data" })
        if (hostpital_name === "") return res.status(400).send({ status: false, message: "you can't update hostpital name with empty data" })
        if (transfer_date === "") return res.status(400).send({ status: false, message: "you can't update transfer date with empty data" })
        if (role === "") return res.status(400).send({ status: false, message: "you can't update role with empty data" })
        if (unit === "") return res.status(400).send({ status: false, message: "you can't update unit with empty data" })
        if (adviced_id === "") return res.status(400).send({ status: false, message: "you can't update adviced id with empty data" })
        if (status === "") return res.status(400).send({ status: false, message: "you can't update status with empty data" })
        if (screening_id || adviced_id) {
            if (!mongoose.Types.ObjectId.isValid(screening_id)) {
                return res.status(400).send({ status: false, message: "PLEASE ENTER CORRECT SCREENING ID" })
            }
            if (!mongoose.Types.ObjectId.isValid(adviced_id)) {
                return res.status(400).send({ status: false, message: "PLEASE ENTER CORRECT ADVICED ID" })
            }
        }

        let updatedata = await bloodTranferModel.findByIdAndUpdate(
            { _id: req.params.bloodTranferId },
            { $set: data },
            { new: true }
        )
        return res.status(200).send({ status: true, message: "data updated successfully", data: updatedata })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
}

const deleteBloodTranfer = async function (req, res) {
    try {
        const bloodTranferId = req.params.bloodTranferId;
        if (!mongoose.Types.ObjectId.isValid(bloodTranferId)) {
            return res
                .status(400)
                .send({ status: false, message: "Invalid bloodTranfer id" });
        }

        const bloodTranferById = await bloodTranferModel.findOne({
            _id: bloodTranferId,
            isDeleted: false,
            deletedAt: null,
        });

        if (!bloodTranferById) {
            return res.status(404).send({
                status: false,
                message: "No bloodTranfer found by this bloodTranfer id",
            });
        }

        await bloodTranferModel.findOneAndUpdate(
            { _id: bloodTranferId },
            { $set: { isDeleted: true, deletedAt: Date.now() } },
            { new: true }
        );

        return res
            .status(200)
            .send({ status: true, message: "BloodTranfer successfully deleted" });
    } catch (error) {
        return res.status(500).send({ status: false, error: error.message });
    }
}



module.exports = { createBloodTranfer, getBloodTranferData, getBloodTranferDataById, updateBloodTranfer, deleteBloodTranfer }
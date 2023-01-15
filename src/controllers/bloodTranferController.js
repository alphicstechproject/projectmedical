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
        const bloodTranferId = req.params.bloodTranferId;
        if (!mongoose.Types.ObjectId.isValid(bloodTranferId)) {
            return res.status(400).send({ status: false, message: " PLEASE ENTER CORRECT BLOODTRANFER ID" })
        }
        const findBloodTranferIdInDb = await bloodTranferModel.findById(bloodTranferId)
        if (!findBloodTranferIdInDb) {
            return res.status(400).send({ status: false, message: "THIS BLOODTRANFER IS NOT PRESENT IN THE DATABASE" })
        }
        return res.status(200).send({ status: true, message: "BLOODTRANFER PROFILE DETAILS", data: findBloodTranferIdInDb })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
};



module.exports = { createBloodTranfer, getBloodTranferData }
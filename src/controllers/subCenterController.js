const subCenterModel = require("../models/subCenterModel");
const mongoose = require('mongoose');


const createSubCenter = async function (req, res) {
    try {
        const data = req.body
        const file = req.files

        if (Object.keys(data).length == 0 && typeof (file) == 'undefined') return res.status(400).send({ status: false, message: "Please provide data" })

        let createdata = await subCenterModel.create(data)
        return res.status(201).send({ status: true, message: "sub-center data created", data: createdata })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
};

const getSubCenterById = async (req, res) => {
    try {
        const subCenterId = req.params.subCenterId;
        if (!mongoose.Types.ObjectId.isValid(subCenterId)) {
            return res.status(400).send({ status: false, message: " PLEASE ENTER CORRECT SUBCENTER ID" })
        }
        const findSubCenterIdInDb = await subCenterModel.findById(subCenterId)
        if (!findSubCenterIdInDb) {
            return res.status(400).send({ status: false, message: "THIS SUBCENTER IS NOT PRESENT IN THE DATABASE" })
        }
        return res.status(200).send({ status: true, message: "SUBCENTER PROFILE DETAILS", data: findSubCenterIdInDb })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
};



module.exports = { createSubCenter, getSubCenterById }
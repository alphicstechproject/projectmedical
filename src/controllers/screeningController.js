const screeningModel = require("../models/screeningModel");
const mongoose = require('mongoose')


const createScreening = async function (req, res) {
    try {
        const data = req.body

        if (Object.keys(data).length == 0 && typeof (file) == 'undefined') return res.status(400).send({ status: false, message: "Please provide data" })

        let createdata = await screeningModel.create(data)
        return res.status(201).send({ status: true, message: "Screening data created", data: createdata })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
};

const getScreeningData = async (req, res) => {
    try {
        const screeningId = req.params.screeningId;
        if (!mongoose.Types.ObjectId.isValid(screeningId)) {
            return res.status(400).send({ status: false, message: " PLEASE ENTER CORRECT SCREENING ID" })
        }
        const findScreeningIdInDb = await screeningModel.findById(screeningId)
        if (!findScreeningIdInDb) {
            return res.status(400).send({ status: false, message: "THIS SCREENING IS NOT PRESENT IN OUR MONGODB" })
        }
        return res.status(200).send({ status: true, message: "SCREENING PROFILE DETAILS", data: findScreeningIdInDb })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
};



module.exports = { createScreening, getScreeningData }
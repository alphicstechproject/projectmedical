const screeningModel = require("../models/screeningModel");
const mongoose = require('mongoose');


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
        let filter = { isDeleted: false }
        let allData = await screeningModel.find(filter)

        let totalScreening = screeningModel.length;
        let notAnemia = (await screeningModel.find({ isDeleted: false, status_question_two: 'No Anemia' })).length;
        let anemiaRate = Math.round(((totalScreening - notAnemia) / totalScreening) * 100);
        console.log('anemiaRate:', anemiaRate, typeof(anemiaRate))
        let last14Days = [];
        if (last14Days.length < 14) {
            last14Days.push()
        } else {
            last14Days.shift();
            last14Days.push()
        }
        let lastMonth = [];
        if (lastMonth.length < 30) {
            lastMonth.push()
        } else {
            lastMonth.shift();
            lastMonth.push()
        }
        let lastYear = [];
        if (lastYear.length < 365) {
            lastYear.push()
        } else {
            lastYear.shift();
            lastYear.push()
        }
        let recentScreening = [];
        // if (recentScreening.length < 7) {
        //     recentScreening.push(createdata)
        // } else {
        //     recentScreening.shift();
        //     recentScreening.push(createdata)
        // }

        return res.status(200).send({ status: true, message: "SCREENING DETAILS", data: allData })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
};

const getScreeningDataById = async (req, res) => {
    try {
        const screeningId = req.params.screeningId;
        if (!mongoose.Types.ObjectId.isValid(screeningId)) {
            return res.status(400).send({ status: false, message: " PLEASE ENTER CORRECT SCREENING ID" })
        }
        const findScreeningIdInDb = await screeningModel.findById(screeningId)
        if (!findScreeningIdInDb) {
            return res.status(400).send({ status: false, message: "THIS SCREENING IS NOT PRESENT IN THE DATABASE" })
        }
        return res.status(200).send({ status: true, message: "SCREENING DETAILS", data: findScreeningIdInDb })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
};



module.exports = { createScreening, getScreeningData, getScreeningDataById }
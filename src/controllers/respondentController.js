const respondentModel = require("../models/respondentModel");
const mongoose = require('mongoose');



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
        const respondentId = req.params.respondentId;
        if (!mongoose.Types.ObjectId.isValid(respondentId)) {
            return res.status(400).send({ status: false, message: " PLEASE ENTER CORRECT RESPONDENT ID" })
        }
        const findRespondentIdInDb = await respondentModel.findById(respondentId)
        if (!findRespondentIdInDb) {
            return res.status(400).send({ status: false, message: "THIS RESPONDENT IS NOT PRESENT IN THE DATABASE" })
        }
        return res.status(200).send({ status: true, message: "RESPONDENT PROFILE DETAILS", data: findRespondentIdInDb })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
};



module.exports = { createRespondent, getRespondent }
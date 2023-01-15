const anganwadiModel = require("../models/anganwadiModel");
const mongoose = require('mongoose');



const createAnganwadi = async function (req, res) {
    try {
        const data = req.body
        const file = req.files

        if (Object.keys(data).length == 0 && typeof (file) == 'undefined') return res.status(400).send({ status: false, message: "Please provide data" })

        let createdata = await anganwadiModel.create(data)
        return res.status(201).send({ status: true, message: "Anganwadi created", data: createdata })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
};

const getAnganwadiById = async (req, res) => {
    try {
        const anganwadiId = req.params.anganwadiId;
        if (!mongoose.Types.ObjectId.isValid(anganwadiId)) {
            return res.status(400).send({ status: false, message: " PLEASE ENTER CORRECT ANGANWADI ID" })
        }
        const findAnganwadiIdInDb = await anganwadiModel.findById(anganwadiId)
        if (!findAnganwadiIdInDb) {
            return res.status(400).send({ status: false, message: "THIS ANGANWADI IS NOT PRESENT IN THE DATABASE" })
        }
        return res.status(200).send({ status: true, message: "ANGANWADI PROFILE DETAILS", data: findAnganwadiIdInDb })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
};



module.exports = { createAnganwadi, getAnganwadiById }
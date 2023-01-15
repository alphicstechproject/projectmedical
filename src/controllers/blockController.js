const blockModel = require("../models/blockModel");
const mongoose = require('mongoose');



const createBlock = async function (req, res) {
    try {
        const data = req.body
        const file = req.files

        if (Object.keys(data).length == 0 && typeof (file) == 'undefined') return res.status(400).send({ status: false, message: "Please provide data" })

        let createdata = await blockModel.create(data)
        return res.status(201).send({ status: true, message: "Block created", data: createdata })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
};

const getBlockById = async (req, res) => {
    try {
        const blockId = req.params.blockId;
        if (!mongoose.Types.ObjectId.isValid(blockId)) {
            return res.status(400).send({ status: false, message: " PLEASE ENTER CORRECT BLOCK ID" })
        }
        const findBlockIdInDb = await blockModel.findById(blockId)
        if (!findBlockIdInDb) {
            return res.status(400).send({ status: false, message: "THIS BLOCK IS NOT PRESENT IN THE DATABASE" })
        }
        return res.status(200).send({ status: true, message: "BLOCK PROFILE DETAILS", data: findBlockIdInDb })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
};



module.exports = { createBlock, getBlockById }
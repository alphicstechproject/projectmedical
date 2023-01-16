const blocks_ScModel = require("../models/blocksAndScModel");
const subCenterModel = require("../models/subCenterModel");


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

const getSubCenter = async (req, res) => {
    try {
        //id - 63c462f2261e4e5d59514f9c
        const blockId = "63c462f2261e4e5d59514f9c";
        const block = req.query.block;
        const findblockInDb = await blocks_ScModel.findById(blockId)
        const data = findblockInDb.blockSc[block];
        if (!data) {
            return res.status(400).send({ status: false, message: "THIS BLOCK IS NOT PRESENT IN THE DATABASE" })
        }
        return res.status(200).send({ status: true, message: "SUBCENTER PROFILE DETAILS", data: data })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
};



module.exports = { createSubCenter, getSubCenter }
const blocks_ScModel = require("../models/blocksAndScModel");

const createBlocks_Sc = async function (req, res) {
    try {
        const data = req.body

        if (Object.keys(data).length == 0 && typeof (file) == 'undefined') return res.status(400).send({ status: false, message: "Please provide data" })

        let createdata = await blocks_ScModel.create(data)
        return res.status(201).send({ status: true, message: "blocks_Sc created", data: createdata })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
};


module.exports = { createBlocks_Sc }
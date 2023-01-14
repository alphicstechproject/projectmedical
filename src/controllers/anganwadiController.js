const anganwadiModel = require("../models/anganwadiModel");





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



module.exports = { createAnganwadi }
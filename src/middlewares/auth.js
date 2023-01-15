const employeeModel = require('../models/employeeModel')
const mongoose = require('mongoose')
const Objectid = mongoose.Types.ObjectId.isValid
const jwt = require('jsonwebtoken')



const authentication = async function (req, res, next) {
    try {
        let token = req.headers["authorization"]
        if (!token) { return res.status(400).send({ status: false, message: "please enter token" }) }
        let decodetoken;
        try {
            decodetoken = jwt.verify(token.split(" ")[1], "key_{Y#@%^*)(J6H$&*^&^5%5V{[DHH](")
        } catch (err) {
            return res.status(401).send({ status: false, message: err.message })
        }
        req.token = decodetoken
        next()

    } catch (err) {
        return res.status(500).send({ status: false, message: err.message })
    }
}

const authorization = async function (req, res, next) {

    try {
        let employeeId = req.params.employeeId
        if (!Objectid(employeeId)) {
            return res.status(400).send({ status: false, message: " PLEASE ENTER CORRECT ID" })
        }

        const findEmployeeidInDb = await employeeModel.findById(employeeId)
        if (!findEmployeeidInDb) {
            return res.status(404).send({ status: false, message: `there is no data with this  ${employeeId}  id in database` })
        }

        if (req.token.id != employeeId) return res.status(403).send({ status: false, message: "authorization failed,employeeid and token are not of the same employee" })
        next()

    } catch (err) {
        return res.status(500).send({ status: false, message: err.message })
    }
}


module.exports = { authentication, authorization }
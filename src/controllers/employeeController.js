const employeeModel = require('../models/employeeModel')
const mongoose = require('mongoose')
const bcrypt = require('bcrypt')
const Objectid = mongoose.Types.ObjectId.isValid
const { isPresent, isValidName, isValidEmail, isValidMobile, isValidPassword } = require('../validations/validation')


const createEmployee = async function (req, res) {
    try {

        const data = req.body
        const file = req.files

        if (Object.keys(data).length == 0 && typeof (file) == 'undefined') return res.status(400).send({ status: false, message: "Please Enter data to Create the User" })
        const { employee_name, full_name, email, mobile, district, block_name, password, role, village_name, anganwadi_center, sub_center } = data;

        if (!isPresent(employee_name)) return res.status(400).send({ status: false, message: "fname is mandatory" })
        if (!isValidName(employee_name)) return res.status(400).send({ status: false, message: "Please Provide the valid fname" })

        if (!isPresent(full_name)) return res.status(400).send({ status: false, message: "lname is mandatory" })
        if (!isValidName(full_name)) return res.status(400).send({ status: false, message: "Please Provide the valid lname" })

        if (!isPresent(email)) return res.status(400).send({ status: false, message: "email is mandatory" })
        if (!isValidEmail(email)) return res.status(400).send({ status: false, message: "email should be in  valid format eg:- name@gmail.com" })

        if (await employeeModel.findOne({ email })) return res.status(400).send({ status: false, message: "This email is already Registered Please give another Email" })

        if (!isPresent(file)) return res.status(400).send({ status: false, message: "profile Image can't be empty" })


        if (!isPresent(mobile)) return res.status(400).send({ status: false, message: "Mobile no. is mandatory" })
        if (!isValidMobile(mobile)) return res.status(400).send({ status: false, message: "please provide Valid mobile Number with 10 digits starts with 6||7||8||9" })

        if (await employeeModel.findOne({ mobile })) return res.status(400).send({ status: false, message: "This mobile no. is already Registered Please give another mobile no." })

        if (!isPresent(password)) return res.status(400).send({ status: false, message: "Password is mandatory" })
        if (!isValidPassword(password)) return res.status(400).send({ status: false, message: "password must have one capital one small one number and one special character[#?!@$%^&*-]" })

        if (file && file.length > 0) {
            data.profileImage = await uploadFile(file[0])
        }
        else {
            return res.status(400).send({ status: false, message: "PROFILE IMAGE FILE IS REQUIRED" })
        }
        data.password = await bcrypt.hash(password, 10)

        let createdata = await employeeModel.create(data)
        return res.status(201).send({ status: true, message: "user created", data: createdata })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
}

const getUser = async function (req, res) {
    try {

        let userId = req.params.userId
        if (!Objectid(userId)) {
            return res.status(400).send({ status: false, message: " PLEASE ENTER CORRECT USER ID" })
        }
        const findUseridInDb = await employeeModel.findById(userId)
        if (!findUseridInDb) {
            return res.status(400).send({ status: false, message: "THIS USER IS NOT PRESENT IN OUR MONGODB" })
        }
        return res.status(200).send({ status: true, message: "USER PROFILE DETAILS", data: findUseridInDb })

    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }



}

const updateUser = async function (req, res) {
    try {
        let data = req.body
        let file = req.files
        if (Object.keys(data).length == 0 && typeof (file) == 'undefined') return res.status(400).send({ status: false, message: "Please Enter data to update the User" })

        if (file && file.length > 0) {
            data.profileImage = await uploadFile(file[0])
        }

        if (data["address.billing.street"] == "") { return res.status(400).send({ status: false, message: "you can't update billing street as a empty string" }) }

        if (data["address.billing.city"] === "") { return res.status(400).send({ status: false, message: "you can't update billing city as a empty string" }) }

        if (data["address.billing.pincode"] === "") { return res.status(400).send({ status: false, message: "you can't update billing pincode as a empty string" }) }

        if (data["address.shipping.street"] === "") { return res.status(400).send({ status: false, message: "you can't update shipping street as a empty string" }) }

        if (data["address.shipping.city"] === "") { return res.status(400).send({ status: false, message: "you can't update shipping city as a empty string" }) }

        if (data["address.shipping.pincode"] === "") { return res.status(400).send({ status: false, message: "you can't update shipping pincode as a empty string" }) }

        const { fname, lname, email, mobile, password } = req.body

        if (fname === "") return res.status(400).send({ status: false, message: "you can't update fname as a empty string" })
        if (lname === "") return res.status(400).send({ status: false, message: "you can't update lname as a empty string" })
        if (mobile === "") return res.status(400).send({ status: false, message: "you can't update mobile as a empty string" })
        if (email === "") return res.status(400).send({ status: false, message: "you can't update email as a empty string" })
        if (password === "") return res.status(400).send({ status: false, message: "you can't update password as a empty string" })

        if (typeof (fname) !== "undefined") {
            if (!isValidName(fname)) return res.status(400).send({ status: false, message: "Please Provide the valid fname,enter only alphabates" })
        }
        if (lname) {
            if (!isValidName(lname)) return res.status(400).send({ status: false, message: "Please Provide the valid lname,enter only alphabates" })
        }
        if (email) {
            if (!isValidEmail(email)) return res.status(400).send({ status: false, message: "email should be in  valid format eg:- name@gmail.com" })

            if (await employeeModel.findOne({ email })) return res.status(400).send({ status: false, message: "This email is already Registered Please give another Email" })
        }

        if (mobile) {
            if (!isValidMobile(mobile)) return res.status(400).send({ status: false, message: "please provide Valid mobile Number with 10 digits starts with 6||7||8||9" })

            if (await employeeModel.findOne({ mobile })) return res.status(400).send({ status: false, message: "This mobile no. is already Registered Please give another mobile no." })
        }
        if (password) {
            if (!isValidPassword(password)) return res.status(400).send({ status: false, message: "please provide Valid password with 1st letter should be Capital letter and contains spcial character with Min length 8 and Max length 15" })
            data.password = await bcrypt.hash(password, 10)
        }
        if (data["address.billing.street"]) {
            if (!isValidadd(data["address.billing.street"])) return res.status(400).send({ status: false, message: " biling street containt only these letters [a-zA-Z_ ,.-]" })
        }
        if (data["address.billing.city"]) {
            if (!isValidadd(data["address.billing.city"])) return res.status(400).send({ status: false, message: "billing city containt only these letters [a-zA-Z_ ,.-]" })
        }

        if (data["address.billing.pincode"]) {
            // console.log(data["address.billing.pincode"])
            if (!isValidPin(data["address.billing.pincode"])) return res.status(400).send({ status: false, message: "Please provide valid billing Pincode of 6 digits" })
        }
        if (data["address.shipping.street"]) { if (!isValidadd(data["address.shipping.street"])) return res.status(400).send({ status: false, message: "shipping street is mandatory" }) }

        if (data["address.shipping.city"]) {
            if (!isValidadd(data["address.shipping.city"])) return res.status(400).send({ status: false, message: "shipping city containt only these letters [a-zA-Z_ ,.-]" })
        }

        if (data["address.shipping.pincode"]) {
            if (!isValidPin(data["address.shipping.pincode"])) return res.status(400).send({ status: false, message: "Please provide valid shipping Pincode of 6 digits" })
        }


        let updatedata = await employeeModel.findByIdAndUpdate(
            { _id: req.params.userId },
            { $set: data },
            { new: true }
        )
        return res.status(200).send({ status: true, message: "data updated successfully", data: updatedata })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
}

module.exports = { createEmployee, getUser, updateUser }
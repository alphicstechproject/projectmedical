const employeeModel = require('../models/employeeModel')
const mongoose = require('mongoose')
const bcrypt = require('bcrypt')
const jwt = require("jsonwebtoken")
const Objectid = mongoose.Types.ObjectId.isValid
const { isPresent, isValidName, isValidMobile, isValidPassword } = require('../validations/validation')


const createEmployee = async function (req, res) {
    try {
        const data = req.body

        if (Object.keys(data).length == 0) return res.status(400).send({ status: false, message: "Please Enter data to Create the Employee" })
        const { employee_name, full_name, mobile, district, block_name, password, role, village_name, anganwadi_center, sub_center } = data;

        if (!isPresent(employee_name)) return res.status(400).send({ status: false, message: "employee_name is mandatory" })

        if (!isPresent(full_name)) return res.status(400).send({ status: false, message: "full_name is mandatory" })
        if (!isValidName(full_name)) return res.status(400).send({ status: false, message: "Please Provide the valid full_name" })

        if (!isPresent(mobile)) return res.status(400).send({ status: false, message: "Mobile no. is mandatory" })
        if (!isValidMobile(mobile)) return res.status(400).send({ status: false, message: "please provide Valid mobile Number with 10 digits starts with 6||7||8||9" })

        if (await employeeModel.findOne({ mobile })) return res.status(400).send({ status: false, message: "This mobile no. is already Registered Please give another mobile no." })

        if (!isPresent(password)) return res.status(400).send({ status: false, message: "Password is mandatory" })
        if (!isValidPassword(password)) return res.status(400).send({ status: false, message: "password must have one capital one small one number and one special character[#?!@$%^&*-]" })

        data.password = await bcrypt.hash(password, 10)

        let createdata = await employeeModel.create(data)
        return res.status(201).send({ status: true, message: "employee created successfully", data: createdata })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
}

const employeeLogin = async function (req, res) {
    try {
        let { employee_name, password } = req.body
        if (Object.entries(req.body).length === 0) {
            return res.status(400).send({ status: false, message: "Please enter employee_name and Password" })
        }
        if (!isPresent(employee_name)) {
            return res.status(400).send({ status: false, message: "Please enter employee_name" })
        }
        if (!isPresent(password)) {
            return res.status(400).send({ status: false, message: "Please enter Password" })
        } if (!isValidPassword(password)) {
            return res.status(400).send({ status: false, message: "password must have one capital one small one number and one special character[#?!@$%^&*-]" })
        }
        let data = await employeeModel.findOne({ employee_name: employee_name })
        if (!data) {
            return res.status(404).send({ status: false, message: "Employee not found with this employee_name" })
        }
        let checkpassword = await bcrypt.compare(password, data.password);
        if (!checkpassword) return res.status(400).send({ status: false, message: "login failed this password not matches with employee_name" })

        await employeeModel.findOneAndUpdate({ employee_name: employee_name }, { status: 'ACTIVE' })

        const token = jwt.sign({
            id: data._id.toString(),
            exp: (Date.now() / 1000) + 60 * 60 * 8
        }, "key_{Y#@%^*)(J6H$&*^&^5%5V{[DHH](")
        return res.status(200).send({ status: true, message: "employee login successfull", data: { employeeid: data._id, token: token } })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
}

const getEmployee = async (req, res) => {
    try {
        let filter = { isDeleted: false }
        let allData = await employeeModel.find(filter)
        return res.status(200).send({ status: true, message: "EMPLOYEE DETAILS", data: allData })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
};

const getEmployeeById = async function (req, res) {
    try {

        let employeeId = req.params.employeeId
        if (!Objectid(employeeId)) {
            return res.status(400).send({ status: false, message: " PLEASE ENTER CORRECT EMPLOYEE ID" })
        }
        const findEmployeeidInDb = await employeeModel.findById(employeeId)
        if (!findEmployeeidInDb) {
            return res.status(400).send({ status: false, message: "THIS EMPLOYEE IS NOT PRESENT IN OUR MONGODB" })
        }
        if (findEmployeeidInDb.isDeleted == true){
            return res.status(400).send({ status: false, message: " THIS EMPLOYEE IS ALREADY DELETED PLEASE CREATE A NEW ONE" })
        }
        return res.status(200).send({ status: true, message: "EMPLOYEE PROFILE DETAILS", data: findEmployeeidInDb })

    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }



}

const updateEmployee = async function (req, res) {
    try {
        let data = req.body
        if (Object.keys(data).length == 0) return res.status(400).send({ status: false, message: "Please Enter data to update the Employee" })
        const { employee_name, full_name, mobile, district, block_name, password, role, village_name, anganwadi_center, sub_center } = data;

        if (employee_name === "") return res.status(400).send({ status: false, message: "you can't update employee_name as a empty string" })
        if (full_name === "") return res.status(400).send({ status: false, message: "you can't update full_name as a empty string" })
        if (mobile === "") return res.status(400).send({ status: false, message: "you can't update mobile as a empty string" })
        if (password === "") return res.status(400).send({ status: false, message: "you can't update password as a empty string" })

        if (typeof (employee_name) !== "undefined") {
            if (!isValidName(employee_name)) return res.status(400).send({ status: false, message: "Please Provide the valid employee_name,enter only alphabates" })
        }
        if (full_name) {
            if (!isValidName(full_name)) return res.status(400).send({ status: false, message: "Please Provide the valid full_name,enter only alphabates" })
        }

        if (mobile) {
            if (!isValidMobile(mobile)) return res.status(400).send({ status: false, message: "please provide Valid mobile Number with 10 digits starts with 6||7||8||9" })

            if (await employeeModel.findOne({ mobile })) return res.status(400).send({ status: false, message: "This mobile no. is already Registered Please give another mobile no." })
        }
        if (password) {
            if (!isValidPassword(password)) return res.status(400).send({ status: false, message: "please provide Valid password with 1st letter should be Capital letter and contains spcial character with Min length 8 and Max length 15" })
            data.password = await bcrypt.hash(password, 10)
        }

        let updatedata = await employeeModel.findByIdAndUpdate(
            { _id: req.params.employeeId },
            { $set: data },
            { new: true }
        )
        return res.status(200).send({ status: true, message: "data updated successfully", data: updatedata })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
}
const deleteEmployee = async function (req, res) {
    try {
        const employeeId = req.params.employeeId;
        if (!mongoose.Types.ObjectId.isValid(employeeId)) {
            return res
                .status(400)
                .send({ status: false, message: "Invalid employee id" });
        }

        const employeeById = await employeeModel.findOne({
            _id: employeeId,
            isDeleted: false,
            deletedAt: null,
        });

        if (!employeeById) {
            return res.status(404).send({
                status: false,
                message: "No employee found by this employee id",
            });
        }

        await employeeModel.findOneAndUpdate(
            { _id: employeeId },
            { $set: { isDeleted: true, deletedAt: Date.now() } },
            { new: true }
        );

        return res
            .status(200)
            .send({ status: true, message: "Employee successfully deleted" });
    } catch (error) {
        return res.status(500).send({ status: false, error: error.message });
    }
}

module.exports = { createEmployee, employeeLogin, getEmployee, getEmployeeById, updateEmployee, deleteEmployee }
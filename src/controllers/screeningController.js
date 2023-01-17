const screeningModel = require("../models/screeningModel");
const mongoose = require('mongoose');
const moment = require('moment');


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
        let { block, village, status_question_two, type_of_respondent } = req.query;
        let filter = { isDeleted: false }
        
        if (block) {
            filter = { isDeleted: false, block: block }
        }
        if (village) {
            filter = { isDeleted: false, village: village }
        }
        if (status_question_two) {
            filter = { isDeleted: false, status_question_two: status_question_two }
        }
        if (type_of_respondent) {
            filter = { isDeleted: false, type_of_respondent: type_of_respondent }
        }
        if (block && village) {
            filter = { isDeleted: false, block: block, village: village }
        }
        if (block && status_question_two) {
            filter = { isDeleted: false, block: block, status_question_two: status_question_two }
        }
        if (block && type_of_respondent) {
            filter = { isDeleted: false, block: block, type_of_respondent: type_of_respondent }
        }
        if (village && status_question_two) {
            filter = { isDeleted: false, village: village, status_question_two: status_question_two }
        }
        if (village && type_of_respondent) {
            filter = { isDeleted: false, village: village, type_of_respondent: type_of_respondent }
        }
        if (status_question_two && type_of_respondent) {
            filter = { isDeleted: false, status_question_two: status_question_two, type_of_respondent: type_of_respondent }
        }
        if (block && village && status_question_two) {
            filter = { isDeleted: false, block: block, village: village, status_question_two: status_question_two }
        }
        if (block && village && type_of_respondent) {
            filter = { isDeleted: false, block: block, village: village, type_of_respondent: type_of_respondent }
        }
        if (block && status_question_two && type_of_respondent) {
            filter = { isDeleted: false, block: block, status_question_two: status_question_two, type_of_respondent: type_of_respondent }
        }
        if (village && status_question_two && type_of_respondent) {
            filter = { isDeleted: false, village: village, status_question_two: status_question_two, type_of_respondent: type_of_respondent }
        }
        if (block && village && status_question_two && type_of_respondent) {
            filter = { isDeleted: false, block: block, village: village, status_question_two: status_question_two, type_of_respondent: type_of_respondent }
        }
        let allData = await screeningModel.find(filter)

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

const updateScreening = async function (req, res) {
    try {
        let data = req.body
        if (Object.keys(data).length == 0) return res.status(400).send({ status: false, message: "Please Enter data to update the screening" })
        const { respondent_name, screening_date, type_of_respondent, support_person_type, support_person_name, age, caste, gest_age, education, school_status, type_of_school, school_name, block, village, anganwadi_center, sub_center, asha_name, anm_name, weight, height, bmi, service_question_one, service_question_two, service_question_three, service_question_four, status_question_one, status_hblevel, status_question_two, status_question_three, status_question_four, advices_description, blood_transfusion_center, blood_transfusion_date, screening_person_name, screening_person_desgination, screening_no, extra_note } = data;

        if (respondent_name === "") return res.status(400).send({ status: false, message: "you can't update respondent_name with empty data" })
        if (screening_date === "") return res.status(400).send({ status: false, message: "you can't update screening_date with empty data" })
        if (type_of_respondent === "") return res.status(400).send({ status: false, message: "you can't update type_of_respondent with empty data" })
        if (support_person_type === "") return res.status(400).send({ status: false, message: "you can't update support_person_type with empty data" })
        if (support_person_name === "") return res.status(400).send({ status: false, message: "you can't update support_person_name with empty data" })
        if (age === "") return res.status(400).send({ status: false, message: "you can't update age with empty data" })
        if (caste === "") return res.status(400).send({ status: false, message: "you can't update caste with empty data" })
        if (gest_age === "") return res.status(400).send({ status: false, message: "you can't update gest_age with empty data" })
        if (education === "") return res.status(400).send({ status: false, message: "you can't update education with empty data" })
        if (school_status === "") return res.status(400).send({ status: false, message: "you can't update school_status with empty data" })
        if (type_of_school === "") return res.status(400).send({ status: false, message: "you can't update type_of_school with empty data" })
        if (school_name === "") return res.status(400).send({ status: false, message: "you can't update school_name with empty data" })
        if (block === "") return res.status(400).send({ status: false, message: "you can't update block with empty data" })
        if (village === "") return res.status(400).send({ status: false, message: "you can't update village with empty data" })
        if (anganwadi_center === "") return res.status(400).send({ status: false, message: "you can't update anganwadi_center with empty data" })
        if (sub_center === "") return res.status(400).send({ status: false, message: "you can't update sub_center with empty data" })
        if (asha_name === "") return res.status(400).send({ status: false, message: "you can't update asha_name with empty data" })
        if (anm_name === "") return res.status(400).send({ status: false, message: "you can't update anm_name with empty data" })
        if (weight === "") return res.status(400).send({ status: false, message: "you can't update weight with empty data" })
        if (height === "") return res.status(400).send({ status: false, message: "you can't update height with empty data" })
        if (bmi === "") return res.status(400).send({ status: false, message: "you can't update bmi with empty data" })
        if (service_question_one === "") return res.status(400).send({ status: false, message: "you can't update service_question_one with empty data" })
        if (service_question_two === "") return res.status(400).send({ status: false, message: "you can't update service_question_two with empty data" })
        if (service_question_three === "") return res.status(400).send({ status: false, message: "you can't update service_question_three with empty data" })
        if (service_question_four === "") return res.status(400).send({ status: false, message: "you can't update service_question_four with empty data" })
        if (status_question_one === "") return res.status(400).send({ status: false, message: "you can't update status_question_one with empty data" })
        if (status_hblevel === "") return res.status(400).send({ status: false, message: "you can't update status_hblevel with empty data" })
        if (status_question_two === "") return res.status(400).send({ status: false, message: "you can't update status_question_two with empty data" })
        if (status_question_three === "") return res.status(400).send({ status: false, message: "you can't update status_question_three with empty data" })
        if (status_question_four === "") return res.status(400).send({ status: false, message: "you can't update status_question_four with empty data" })
        if (advices_description === "") return res.status(400).send({ status: false, message: "you can't update advices_description with empty data" })
        if (blood_transfusion_center === "") return res.status(400).send({ status: false, message: "you can't update blood_transfusion_center with empty data" })
        if (blood_transfusion_date === "") return res.status(400).send({ status: false, message: "you can't update blood_transfusion_date with empty data" })
        if (screening_person_name === "") return res.status(400).send({ status: false, message: "you can't update screening_person_name with empty data" })
        if (screening_person_desgination === "") return res.status(400).send({ status: false, message: "you can't update screening_person_desgination with empty data" })
        if (screening_no === "") return res.status(400).send({ status: false, message: "you can't update screening_no with empty data" })
        if (extra_note === "") return res.status(400).send({ status: false, message: "you can't update extra_note with empty data" })

        let updatedata = await screeningModel.findByIdAndUpdate(
            { _id: req.params.screeningId },
            { $set: data },
            { new: true }
        )
        return res.status(200).send({ status: true, message: "data updated successfully", data: updatedata })
    } catch (error) {
        return res.status(500).send({ msg: error.message, status: false })
    }
}

const dashboard = async (req, res) => {
    try {
        let totalScreening = screeningModel.length;
        let notAnemia = (await screeningModel.find({ isDeleted: false, status_question_two: 'No Anemia' })).length;
        let anemiaRate = Math.round(((totalScreening - notAnemia) / totalScreening) * 100);
        console.log('anemiaRate:', anemiaRate, typeof (anemiaRate))
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
    } catch {

    }
}



module.exports = { createScreening, getScreeningData, getScreeningDataById, updateScreening }
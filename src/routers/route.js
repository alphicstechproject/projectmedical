const express = require('express');
const router = express.Router();
const employeeModel = require('../models/employeeModel')
const { createEmployee, employeeLogin, getEmployee, getEmployeeById, updateEmployee, deleteEmployee } = require('../controllers/employeeController');
const { authentication, authorization } = require('../middlewares/auth')
const { getAnganwadiById } = require('../controllers/anganwadiController');
const { getSubCenter } = require('../controllers/subCenterController');
const { getBlock } = require('../controllers/blockController');
const { createScreening, getScreeningData, getScreeningDataById, updateScreening, deleteScreening, dashboard, filter } = require('../controllers/screeningController');
const { createAdvice, getAdvice, getAdviceById, updateAdvice, deleteAdvice } = require('../controllers/adviceController');
const { createRespondent, getRespondent, getRespondentById, updateRespondent, deleteRespondent } = require('../controllers/respondentController');
const { createBloodTranfer, getBloodTranferData, getBloodTranferDataById, updateBloodTranfer, deleteBloodTranfer } = require('../controllers/bloodTranferController');

/** anganwadi * subcenter * block*/


// -------------------------------- Dashboard ----------------------------------------
router.get('/api/dashboard', dashboard)


// -------------------------------- Login ----------------------------------------
router.post('/api/login', employeeLogin)

// -------------------------------- Login ----------------------------------------
router.get('/api/logout/:employeeId', async (req, res) => {
    try {
        const employee = await employeeModel.findOne({ _id: req.params.employeeId })
        res.clearCookie("jwt");
        req.headers["authorization"] = [];
        // console.log('token:', token)
        // token = token.split(' ')[1]
        // console.log('token:', token)
        await employee.save();
        // res.render("login");
        return res.status(200).send({ status: true, message: "logout Successfully" })
    } catch (error) {
        return res.status(500).send({ status: false, msg: error.message })
    }
})

// -------------------------------- Employee ----------------------------------------
router.post('/api/employee', createEmployee)
router.get('/api/employee', getEmployee)
router.get('/api/employee/:employeeId', authentication, authorization, getEmployeeById)
router.put('/api/employee/:employeeId', authentication, authorization, updateEmployee)
router.delete('/api/employee/:employeeId', authentication, deleteEmployee)

// -------------------------------- Anganwadi ---------------------------------------
// router.get('/api/anganwadi', getAnganwadi)
router.get('/api/anganwadi/:anganwadiId', getAnganwadiById)

// -------------------------------- SubCenter ---------------------------------------
router.get('/api/subCenter', getSubCenter)

// -------------------------------- Block -------------------------------------------
router.get('/api/block', getBlock)

// -------------------------------- Screening ---------------------------------------
router.post('/api/screening', createScreening)
router.get('/api/screening', getScreeningData)
router.get('/api/screening/:screeningId', getScreeningDataById)
router.put('/api/screening/:screeningId', updateScreening)
router.delete('/api/screening/:screeningId', deleteScreening)
router.get('/api/screening-filter', filter)

// -------------------------------- Advice ------------------------------------------
router.post('/api/advice', createAdvice)
router.get('/api/advice', getAdvice)
router.get('/api/advice/:adviceId', getAdviceById)
router.put('/api/advice/:adviceId', updateAdvice)
router.delete('/api/advice/:adviceId', deleteAdvice)

// -------------------------------- Respondent --------------------------------------
router.post('/api/respondent', createRespondent)
router.get('/api/respondent', getRespondent)
router.get('/api/respondent/:respondentId', getRespondentById)
router.put('/api/respondent/:respondentId', updateRespondent)
router.delete('/api/respondent/:respondentId', deleteRespondent)

// -------------------------------- BloodTranfer ------------------------------------
router.post('/api/blood-transfusion', createBloodTranfer)
router.get('/api/blood-transfusion', getBloodTranferData)
router.get('/api/blood-transfusion/:bloodTranferId', getBloodTranferDataById)
router.put('/api/blood-transfusion/:bloodTranferId', updateBloodTranfer)
router.delete('/api/blood-transfusion/:bloodTranferId', deleteBloodTranfer)

// -------------------------------- Blocks_Sc ------------------------------------
const { createBlocks_Sc } = require('../controllers/blockAndScController');
router.post('/api/blocks_Sc', createBlocks_Sc)


// -------------------------------- Sample ------------------------------------
// router.post('/api/sample', createSample); // Responsible for create an record.
// router.get('/api/sample', getAllSample); // listing of all data wrt collection 
// router.get('/api/sample/:_id', getSample); // individual sample
// router.put('/api/sample/:_id', updateSample)
// router.delete('/api/sample/:_id', deleteSample)



router.all("/*", function (req, res) {
    return res.status(400).send({
        status: false, message: "Make Sure Your Endpoint is Correct !!!"
    });
});
module.exports = router;
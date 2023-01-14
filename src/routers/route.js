const express = require('express');
const router = express.Router();
const { createEmployee, updateEmployee, getEmployee, deleteEmployee } = require('../controllers/employeeController');
const { getAnganwadi } = require('../controllers/anganwadiController');
const { getSubCenter } = require('../controllers/subCenterController');
const { getBlock } = require('../controllers/blockController');
const { createScreening, updateScreening, getScreeningData, deleteScreening } = require('../controllers/screeningController');
const { createAdvice, updateAdvice, getAdvice, deleteAdvice } = require('../controllers/adviceController');
const { createRespondent, updateRespondent, getRespondent, deleteRespondent } = require('../controllers/respondentController');
const { createBloodTranfer, updateBloodTranfer, getBloodTranfer, deleteBloodTranfer } = require('../controllers/bloodTranferController');

/** anganwadi * subcenter * block*/

// -------------------------------- Employee ----------------------------------------
router.post('/api/employee_registration', createEmployee)
router.put('/api/updateEmployee', updateEmployee)
router.get('/api/getEmployee', getEmployee)
router.delete('/api/deleteEmployee', deleteEmployee)
// -------------------------------- Anganwadi ---------------------------------------
router.get('/api/getAnganwadi', getAnganwadi)
// -------------------------------- SubCenter ---------------------------------------
router.get('/api/getSubCenter', getSubCenter)
// -------------------------------- Block -------------------------------------------
router.get('/api/getBlock', getBlock)
// -------------------------------- Screening ---------------------------------------
router.post('/api/screening', createScreening)
router.put('/api/updateScreening', updateScreening)
router.get('/api/getScreeningData', getScreeningData)
router.delete('/api/deleteScreening', deleteScreening)
// -------------------------------- Advice ------------------------------------------
router.post('/api/createAdvice', createAdvice)
router.put('/api/updateAdvice', updateAdvice)
router.get('/api/getAdvice', getAdvice)
router.delete('/api/deleteAdvice', deleteAdvice)
// -------------------------------- Respondent --------------------------------------
router.post('/api/respondent', createRespondent)
router.put('/api/updateRespondent', updateRespondent)
router.get('/api/getRespondent', getRespondent)
router.delete('/api/deleteRespondent', deleteRespondent)
// -------------------------------- BloodTranfer ------------------------------------
router.post('/api/BloodTranfer', createBloodTranfer)
router.put('/api/updateBloodTranfer', updateBloodTranfer)
router.get('/api/getBloodTranfer', getBloodTranfer)
router.delete('/api/deleteBloodTranfer', deleteBloodTranfer)




router.all("/*", function (req, res) {
    return res.status(400).send({
        status: false, message: "Make Sure Your Endpoint is Correct !!!"
    });
});
module.exports = router;
const express = require('express');
const router = express.Router();
const { createEmployee, employeeLogin, getEmployeeById, updateEmployee, deleteEmployee } = require('../controllers/employeeController');
const { authentication, authorization } = require('../middlewares/auth')
const { getAnganwadiById } = require('../controllers/anganwadiController');
const { getSubCenterById } = require('../controllers/subCenterController');
const { getBlockById } = require('../controllers/blockController');
const { createScreening, getScreeningDataById, updateScreening, deleteScreening } = require('../controllers/screeningController');
const { createAdvice, getAdviceById, updateAdvice, deleteAdvice } = require('../controllers/adviceController');
const { createRespondent, getRespondentById, updateRespondent, deleteRespondent } = require('../controllers/respondentController');
const { createBloodTranfer, getBloodTranferDataById, updateBloodTranfer, deleteBloodTranfer } = require('../controllers/bloodTranferController');

/** anganwadi * subcenter * block*/

// -------------------------------- Login ----------------------------------------
router.post('/api/login', employeeLogin)
// -------------------------------- Employee ----------------------------------------
router.post('/api/employee', createEmployee)
// router.get('/api/employee', getEmployee)
router.get('/api/employee/:employeeId', authentication, authorization, getEmployeeById)
router.put('/api/employee/:employeeId', authentication, authorization, updateEmployee)
// router.delete('/api/employee/:employeeId', authentication, authorization, deleteEmployee)
// -------------------------------- Anganwadi ---------------------------------------
// router.get('/api/anganwadi', getAnganwadi)
router.get('/api/anganwadi/:anganwadiId', getAnganwadiById)
// -------------------------------- SubCenter ---------------------------------------
// router.get('/api/subCenter', getSubCenter)
router.get('/api/subCenter/:subCenterId', getSubCenterById)
// -------------------------------- Block -------------------------------------------
// router.get('/api/block', getBlock)
router.get('/api/block/:blockId', getBlockById)
// -------------------------------- Screening ---------------------------------------
router.post('/api/screening', createScreening)
// router.get('/api/screening', getScreeningData)
router.get('/api/screening/:screeningId', getScreeningDataById)
// router.put('/api/screening/:screeningId', updateScreening)
// router.delete('/api/screening/:screeningId', deleteScreening)
// -------------------------------- Advice ------------------------------------------
router.post('/api/advice', createAdvice)
// router.get('/api/advice', getAdvice)
router.get('/api/advice/:adviceId', getAdviceById)
// router.put('/api/advice/:adviceId', updateAdvice)
// router.delete('/api/advice/:adviceId', deleteAdvice)
// -------------------------------- Respondent --------------------------------------
router.post('/api/respondent', createRespondent)
// router.get('/api/respondent', getRespondent)
router.get('/api/respondent/:respondentId', getRespondentById)
// router.put('/api/respondent/:respondentId', updateRespondent)
// router.delete('/api/respondent/:respondentId', deleteRespondent)
// -------------------------------- BloodTranfer ------------------------------------
router.post('/api/blood-transfusion', createBloodTranfer)
// router.get('/api/blood-transfusion', getBloodTranferData)
router.get('/api/blood-transfusion/:bloodTranferId', getBloodTranferDataById)
// router.put('/api/blood-transfusion/:bloodTranferId', updateBloodTranfer)
// router.delete('/api/blood-transfusion/:bloodTranferId', deleteBloodTranfer)


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
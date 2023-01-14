const mongoose = require('mongoose')

const respondentSchema = new mongoose.Schema({
    aadhar_no: { type: String, required: true, Min: 16, Max:16, trim: true },
    creation_date: { type: String, required: true, trim: true },
    respondent_name: { type: String, required: true, trim: true },
    mobile: { type: String, required: true, unique: true, trim: true },
    isDeleted: { type: Boolean, default: false }
}, { timestamps: true })

module.exports = mongoose.model('Respondent', respondentSchema)
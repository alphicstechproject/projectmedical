const mongoose = require('mongoose')

const adviceSchema = new mongoose.Schema({
    respondent_title: { type: String, required: true, trim: true },
    anemia_stage: { type: String, required: true, trim: true },
    description: { type: String, required: true, trim: true },
    isDeleted: { type: Boolean, default: false }
}, { timestamps: true })

module.exports = mongoose.model('Advice', adviceSchema)
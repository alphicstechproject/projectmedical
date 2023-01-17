const mongoose = require('mongoose')

const employeeSchema = new mongoose.Schema({
    employee_name: { type: String, required: true, trim: true },
    full_name: { type: String, required: true, trim: true },
    mobile: { type: String, required: true, unique: true, trim: true },
    district: { type: String, required: true, trim: true },
    block_name: { type: String, required: true, trim: true },
    password: { type: String, required: true, Min: 8, trim: true },
    role: { type: String, required: true, trim: true },
    village_name: { type: String, required: true, trim: true },
    anganwadi_center: { type: String, required: true, trim: true },
    sub_center: { type: String, required: true, trim: true },
    status: {type: String, default: "INACTIVE"},
    isDeleted: { type: Boolean, default: false }
}, { timestamps: true })

module.exports = mongoose.model('Employee', employeeSchema)
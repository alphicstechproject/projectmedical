const mongoose = require('mongoose')
const ObjectId = mongoose.Schema.Types.ObjectId

const bloodSchema = new mongoose.Schema({
    screening_id: { type: ObjectId, ref: "Screening", required: true },
    hostpital_name: { type: String, required: true, trim: true },
    transfer_date: { type: String, required: true, trim: true },
    role: { type: String, required: true, trim: true },
    unit: { type: String, required: true, trim: true },
    adviced_id: { type: ObjectId, ref: "Advice", required: true },
    status: { type: Number, default: 0 },
    isDeleted: { type: Boolean, default: false }
}, { timestamps: true })

module.exports = mongoose.model('Blood', bloodSchema);
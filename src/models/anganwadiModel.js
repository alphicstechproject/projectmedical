const mongoose = require('mongoose')
const ObjectId = mongoose.Schema.Types.ObjectId

const anganwadiSchema = new mongoose.Schema({
    block_Id: { type: ObjectId, ref: "block", required: true },
    anganwadi_center: { type: String, required: true, trim: true }
}, { timestamps: true })

module.exports = mongoose.model('Anganwadi', anganwadiSchema)


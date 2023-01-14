const mongoose = require('mongoose')

const subcenterSchema = new mongoose.Schema({
    block_name: { type: String, required: true, trim: true },
    subcenter_name: { type: String, required: true, trim: true }
}, { timestamps: true })

module.exports = mongoose.model('Subcenter', subcenterSchema)


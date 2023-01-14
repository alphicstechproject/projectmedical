const mongoose = require('mongoose')

const blockSchema = new mongoose.Schema({
    block_name: { type: String, required: true, trim: true }
}, { timestamps: true })

module.exports = mongoose.model('Block', blockSchema)


const mongoose = require('mongoose')

const blocks_ScSchema = new mongoose.Schema({
    "allBlocks": { type: [String], required: true, trim: true },
    "blockSc": {
        "Bhawanipatna": [{
            type: String, required: true, trim: true
        }],
        "Dharamagada": [{
            type: String, required: true, trim: true
        }],
        "Golamunda": { type: [String], required: true, trim: true },
        "Jaipatna": { type: [String], required: true, trim: true },
        "Junagarh": { type: [String], required: true, trim: true },
        "Kalampur": { type: [String], required: true, trim: true },
        "Karlamunda": { type: [String], required: true, trim: true },
        "Kesinga": { type: [String], required: true, trim: true },
        "Koksara": { type: [String], required: true, trim: true },
        "Lanjigarh(T)": { type: [String], required: true, trim: true },
        "M Rampur": { type: [String], required: true, trim: true },
        "Narla Block": { type: [String], required: true, trim: true },
        "Th Rampur(T) Block": { type: [String], required: true, trim: true }
    },
    isDeleted: { type: Boolean, default: false }
}, { timestamps: true })

module.exports = mongoose.model('BlockAndSC', blocks_ScSchema)
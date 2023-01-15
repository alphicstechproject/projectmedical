import { useState } from "react"

export default function AdviseDetailForm({index, setAnaemiaStageArray, setDescriptionArray}){
    const [anaemiaStage, setAnaemiaStage] = useState("Severe Anemia")
    const [description, setDescription] = useState("")

    return (
        <div>
        <label>Anemia stage<select value={anaemiaStage} onChange={(e) => {
            setAnaemiaStageArray(prev => {
                let v = [...prev]
                v[index] = e.target.value
                return v
            })
            setAnaemiaStage(e.target.value)
        }} type="text" required>
                <option>Severe Anemia</option>
                <option>Moderate Anemia</option>
                <option>No Anemia</option>
                <option>Mild Anemia</option>
                <option>All</option>
                </select></label>

            <label>Description<textarea value={description} onChange={(e) => {
                setDescriptionArray(prev => {
                    let v = [...prev]
                    v[index] = e.target.value
                    return v
                })
                setDescription(e.target.value)
                }} required ></textarea></label>
        </div>
    )
}
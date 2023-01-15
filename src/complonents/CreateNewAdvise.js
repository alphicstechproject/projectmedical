import { useState } from "react"
import primaryFill from "../images/Primary fill.png"
import AdviseDetailForm from "./AdviseDetailForm";
export default function CreateNewAdvise({toggleAdviseForm, userId}){
    const [resName, setResName] = useState("")
    
    const [anaemiaStageArray, setAnaemiaStageArray] = useState(["Severe Anemia"])
    const [descriptionArray, setDescriptionArray] = useState([""])
    async function handleSubmit(){
        const response = await fetch("/createAdvise", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                resName,
                anaemiaStageArray,
                descriptionArray,
                userId
            }),
        })
        const resJson = await response.json()
        console.log(resName);
    }
    
    return (
        <section>
            <div>
                <img onClick={() => toggleAdviseForm()} src={primaryFill} />
                <h1>Create New Advised Report</h1>
            </div>
            
            <form onSubmit={(e) => {
                e.preventDefault()
                handleSubmit()
            }}>
                <input type="submit" value="Save"></input>
            <label>Respondent name<input value={resName} onChange={(e) => setResName(e.target.value)} type="text" placeholder="Enter User Full Name" required /></label>
            <h1>Advised Details</h1>
           {
            anaemiaStageArray.map((c, index) => {
                return <AdviseDetailForm index={index} setAnaemiaStageArray={setAnaemiaStageArray} setDescriptionArray={setDescriptionArray} />
            })
           }
            
            </form>
        <button onClick={() => {
            setAnaemiaStageArray((prev) => {
                return [...prev, "Severe Anemia"]
            })
            setDescriptionArray((prev) => {
                return [...prev, ""]
            })
        }}>Add</button>
        </section>
    )
}
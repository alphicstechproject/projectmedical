import { useState } from "react"
import primaryFill from "../images/Primary fill.png"

import exportImage from "../images/export.png"
import mathPlus from "../images/advisePlus.png"
import Footer from "./Footer";
import { apiUrl } from "../url";
import { useNavigate } from "react-router-dom";
export default function CreateNewAdvise({toggleAdviseForm, userId, employeeid, addAdvise}){
    const [resName, setResName] = useState("Pregnant Women")
    const [anaemiaStage, setAnaemiaStage] = useState("Severe Anemia")
    const [description, setDescription] = useState("")
    const [message, setMessage] = useState("")

    
   
    async function handleSubmit(){
        
        const response = await fetch(`${apiUrl}advice`, {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
                "authorization" : localStorage.getItem(employeeid)
            },
            body: JSON.stringify({
                respondent_title:resName,
                anemia_stage:anaemiaStage,
                description:description,
                
            }),
        })
        const resJson = await response.json()
        if(resJson.status){
            addAdvise(resName, description)
        }
        resJson.status ? toggleAdviseForm() : setMessage(resJson.msg)
    }
    
    return (
        <section className="section">
            
            <form className="adviseForm"  onSubmit={(e) => {
                e.preventDefault()
                handleSubmit()
            }}>
                <div className="formHeader">
                <img className="backIcon" onClick={() => toggleAdviseForm()} src={primaryFill} />
                <h1>Create New Advised Report</h1>
                
            
                <button className="exportButton submitUser"><img src={exportImage} />Save</button>
                </div>
            <label><div>Respondent Name <span className="colorRed">*</span></div><select className="adviseFormInputs userFormInputs" value={resName} onChange={(e) => setResName(e.target.value)} required>
            
           
            <option value="Pregnant Women">Pregnant Women</option>    
            <option value="Adl. Girls (School Going)">Adl. Girls (School Going)</option>    
            <option value="Adl. Girls (Non-School Going)">Adl. Girls (Non-School Going)</option>    
            </select></label>
            <h1>Advised Details</h1>
            <div>
        <label><div>Anaemia Stage <span className="colorRed">*</span></div><select className="adviseFormInputs userFormInputs" value={anaemiaStage} onChange={(e) => {
            setAnaemiaStage(e.target.value)
        }} type="text" required>
                <option>Severe Anemia</option>
                <option>Moderate Anemia</option>
                <option>No Anemia</option>
                <option>Mild Anemia</option>
                <option>All</option>
                </select></label>

            <label><div>Description <span className="colorRed">*</span></div><textarea className="adviseFormInputs userFormInputs" value={description} onChange={(e) => {
                setDescription(e.target.value)
                }} required ></textarea></label>
        </div>
           
            </form>
            <p>{message}</p>
        <Footer />
        </section>
    )
}
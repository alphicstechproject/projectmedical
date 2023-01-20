import { useEffect, useState } from "react"
import { apiUrl } from "../url"

import Footer from "./Footer"

export default function UserDetails({userId, toggleUserDetail, adharNumProp, employeeid, exit}){
    const [dateInput, setDateInput] = useState("")
    const [referInput, setReferInput] = useState("")
    const [hospitalInput, setHospitalInput] = useState("")
    const [bloodInput, setBloodInput] = useState("")
    const [id, setId] = useState("")
    const [nameOfRes, setNameOfRes] = useState("")
    const [education, setEducation] = useState("")
    const [center, setCenter] = useState("")
    const [weight, setWeight] = useState("")
    const [takingService, setTakingService] = useState("")
    const [des, setDes] = useState("")
    const [cellDisease, setCellDisease] = useState("")
    const [dateOfCreation, setDateOfCreation] = useState("")
    const [referDetails, setReferDetails] = useState({createdAt: "", hostpital_name
:"", unit: ""})
    const [caste, setCaste] = useState("")
    const [subCenter, setSubCenter] = useState("")
    const [heightInC, setHeightInC] = useState("")
    const [reason, setReason] = useState("")
    const [hbLevel, setHbLevel] = useState("")
    const [age, setAge] = useState("")
    const [block, setBlock] = useState("")
    const [ashaWorker, setAshaWorker] = useState("")
    const [bmi, setBmi] = useState("")
    const [attendingVHSND, setAttendingVHSND] = useState()
    const [anemiaStatus, setAnemiaStatus] = useState("")
    const [type, setType] = useState("")
    const [gestAge, setGestAge] = useState("")
    const [anmName, setAnmName] = useState("")
    const [malariaAffected, setMalariaAffected] = useState("")
    async function getBloodDetails(){
        const response = await fetch(`${apiUrl}blood-transfusion/${adharNumProp}`, {
            method: 'GET',
            headers: {
                "authorization" : localStorage.getItem(employeeid)
            }
        })
        const resJson = await response.json()
        //setReferDetails(resJson.data[0])
        console.log(resJson.data[0]);
    }
    async function getAllDetails(){
        const response = await fetch(`${apiUrl}screening/${adharNumProp}`, {
            method: 'GET',
            headers: {
                "authorization" : localStorage.getItem(employeeid)
            }
        })
        const resJson = await response.json()
        
        // setAge(resJson.data.age)
        // setCaste(resJson.data.caste)
        // setDateOfCreation(resJson.data.createdAt.slice(0,10))
        // setBmi(resJson.data.bmi)
        // setHeightInC(resJson.data.height)
        // setHbLevel(resJson.data.status_hglevel)
        // setWeight(resJson.data.weight)
        // setNameOfRes(resJson.data.respondent_name)
        // setHbLevel(resJson.data.status_hblevel)
        // setEducation(resJson.data.education)
        // setDateOfCreation(resJson.data.screening_date)
        // setCenter(resJson.data.anganwadi_center)
        // setTakingService(resJson.data.service_question_one)
        // setCellDisease(resJson.data.status_question_four)
        // setSubCenter(resJson.data.sub_center)
        // setReason(resJson.data.service_question_two)
        // setBlock(resJson.data.block)
        // setAshaWorker(resJson.data.asha_name)
        // setAttendingVHSND(resJson.data.service_question_three)
        // setAnemiaStatus(resJson.data.status_question_two)
        // setType(resJson.data.type_of_respondent)
        // setGestAge(resJson.data.gest_age)
        // setAnmName(resJson.data.anm_name)
        // setMalariaAffected(resJson.data.status_question_three)
        // setDes(resJson.data.advices_description)
        // setId(resJson.data._id)
    }
    async function sendHospitalInput(){
        const response = await fetch(`${apiUrl}blood-transfusion`, {
            method: "PUT",
            headers: {
                "Content-Type": "application/json",
                "authorization" : localStorage.getItem(employeeid)
            },
            body: JSON.stringify({
                screening_id: adharNumProp,
                transfer_date:dateInput,
                unit:bloodInput,
                hostpital_name:hospitalInput,
            }),
        })
    }
    useEffect(() => {
        getAllDetails()
        getBloodDetails()
    }, [])
    return (
        <section className="screeningPage section">
            <button className="exportButton" onClick={() => exit()}>exit</button>
            <div className="screenDetailSection">
                <p className="weighted">Unique ID / Aadhar card</p>
                <p>{id}</p>
                <h1>General Information</h1>
                <p className="weighted">Name of Respondent</p>
                <p>{nameOfRes}</p>
                <p className="weighted">Education Qualification</p>
                <p>{education}</p>
                <p className="weighted">Anganwadi Center</p>
                <p>{center}</p>
                <h1>Anthropometry</h1>
                <p className="weighted">Weight in KG</p>
                <p>{weight}</p>
                <h1>Taking service</h1>
                <p className="weighted">Are you currently consuming IFA</p>
                <p>{takingService}</p>
                <h1>Current Anemia status</h1>
                
                <p className="weighted">Do you have sickle cell disease</p>
                <p>{cellDisease}</p>
                <p className="weighted">Date of creation</p>
                <p>{dateOfCreation}</p>
                
                <p className="weighted">Caste</p>
                <p>{caste}</p>
                <p className="weighted">Sub Center</p>
                <p>{subCenter}</p>
                <p className="weighted">Height in centimeter</p>
                <p>{heightInC}</p>
                <p className="weighted">Why did you discontinued taking</p>
                <p>{reason}</p>
                <p className="weighted">What is the HB. level</p>
                <p>{hbLevel}</p>
                <p className="weighted">Age( In completed year)</p>
                <p>{age}</p>
                <p className="weighted">Block</p>
                <p>{block}</p>
                <p className="weighted">Asha Worker</p>
                <p>{ashaWorker}</p>
                <p className="weighted">BMI Calculator</p>
                <p>{bmi}</p>
                <p className="weighted">Are you attending VHSND/Hospital for your ANC checkups</p>
                <p>{attendingVHSND}</p>
                <p className="weighted">Anemia status</p>
                <p>{anemiaStatus}</p>
                <p className="weighted">Type of respondent</p>
                <p>{type}</p>
                <p className="weighted">Gest. age</p>
                <p>{gestAge}</p>
                <p className="weighted">ANM name</p>
                <p>{anmName}</p>
                <p className="weighted">Have you affected with malaria in last 3 months.</p>
                <p>{malariaAffected}</p>
            </div>
            <div className="bottomDiv">
            <div>
            <table className="tableSectionScreenDetails">
            <thead className="tableHeadDashboard">
                <tr className="tableHeadDashboard">
                    
                    <th className="dashboardTableHeader">Refer Date</th>
                    <th className="dashboardTableHeader">Refer By</th>
                    <th className="dashboardTableHeader">Hospital</th>
                    <th className="dashboardTableHeader">Units of blood</th>
                    
                </tr>
            </thead>
            <tbody>
            
                    <tr>
                    <td className="tableItemsDash">{referDetails.createdAt}</td>
                    <td className="tableItemsDash">{ashaWorker}</td>
                    <td className="tableItemsDash">{referDetails.hostpital_name}</td>
                    <td className="tableItemsDash">{referDetails.unit}</td>
        
                </tr>
            
                
            
            </tbody>
        </table>
        
        <form className="referForm" onSubmit={(e) => {
            e.preventDefault()
            sendHospitalInput()
        }}>
        <input className="referInput" value={dateInput} onChange={(e) => setDateInput(e.target.value)} type="date" placeholder="Enter date" required />

        <input className="referInput" value={referInput} onChange={(e) => setReferInput(e.target.value)} type="text" placeholder="Enter refer by" required />

        <input className="referInput" value={hospitalInput} onChange={(e) => setHospitalInput(e.target.value)} type="text" placeholder="Enter hospital" required />

        <input className="referInput" value={bloodInput} onChange={(e) => setBloodInput(e.target.value)} type="text" placeholder="Enter unit" required />

        <input className="exportButtonSave" type="submit" value="Save" />
        </form>
        </div>
        <div>
        <p>More Advise</p>
        <p>{des}</p>
        </div>
        </div>
        <Footer />
        </section>
    )
}
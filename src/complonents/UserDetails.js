import { useState } from "react"

export default function UserDetails({toggleUserDetail, adharNumProp}){
    const [dateInput, setDateInput] = useState("")
    const [referInput, setReferInput] = useState("")
    const [hospitalInput, setHospitalInput] = useState("")
    const [bloodInput, setBloodInput] = useState("")
    const [adharNum, setAdharNum] = useState("")
    const [nameOfRes, setNameOfRes] = useState("")
    const [eduaction, setEduaction] = useState("")
    const [center, setCenter] = useState("")
    const [weigth, setWeigth] = useState("")
    const [takingService, setTakingService] = useState("")
    const [takenBlood, setTakenBlood] = useState("")
    const [cellDisease, setCellDisease] = useState("")
    const [dateOfCreation, setDateOfCreation] = useState("")
    const [husband, setHusband] = useState("")
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
    return (
        <section>
            <button onClick={() => toggleUserDetail()}>exit</button>
            <div>
                <p>Unique ID / Aadhar card</p>
                <p>{adharNumProp}</p>
                <h1>General Information</h1>
                <p>Name of Respondent</p>
                <p>{nameOfRes}</p>
                <p>Education Qualification</p>
                <p>{eduaction}</p>
                <p>Anganwadi Center</p>
                <p>{center}</p>
                <h1>Anthropometry</h1>
                <p>Weight in KG</p>
                <p>{weigth}</p>
                <h1>Taking service</h1>
                <p>Are you currently consuming IFA</p>
                <p>{takingService}</p>
                <h1>Current Anemia status</h1>
                <p>Have you taken blood test in last 3 months</p>
                <p>{takenBlood}</p>
                <p>Do you have sickle cell disease</p>
                <p>{cellDisease}</p>
                <p>Date of creation</p>
                <p>{dateOfCreation}</p>
                <p>Husband</p>
                <p>{husband}</p>
                <p>Caste</p>
                <p>{caste}</p>
                <p>Sub Center</p>
                <p>{subCenter}</p>
                <p>Height in centimeter</p>
                <p>{heightInC}</p>
                <p>Why did you discontinued taking</p>
                <p>{reason}</p>
                <p>What is the HB. level</p>
                <p>{hbLevel}</p>
                <p>Age( In completed year)</p>
                <p>{age}</p>
                <p>Block</p>
                <p>{block}</p>
                <p>Asha Worker</p>
                <p>{ashaWorker}</p>
                <p>BMI Calculator</p>
                <p>{bmi}</p>
                <p>Are you attending VHSND/Hospital for your ANC checkups</p>
                <p>{attendingVHSND}</p>
                <p>Anemia status</p>
                <p>{anemiaStatus}</p>
                <p>Type of respondent</p>
                <p>{type}</p>
                <p>Gest. age</p>
                <p>{gestAge}</p>
                <p>ANM name</p>
                <p>{anmName}</p>
                <p>Have you affected with malaria in last 3 months.</p>
                <p>{malariaAffected}</p>
            </div>
            <div>
            <table className="tableSectionDashboard">
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
                    <td className="tableItemsDash">date value</td>
                    <td className="tableItemsDash">refer value</td>
                    <td className="tableItemsDash">hos val</td>
                    <td className="tableItemsDash">blood val</td>
        
                </tr>
            
                
            
            </tbody>
        </table>
        <form>
        <input value={dateInput} onChange={(e) => setDateInput(e.target.value)} type="text" placeholder="Enter date" required />
        <input value={referInput} onChange={(e) => setReferInput(e.target.value)} type="text" placeholder="Enter refer by" required />
        <input value={hospitalInput} onChange={(e) => setHospitalInput(e.target.value)} type="text" placeholder="Enter hospital" required />
        <input value={bloodInput} onChange={(e) => setBloodInput(e.target.value)} type="text" placeholder="Enter unit" required />
        <input type="submit" value="Save" />
        </form>
        <p>More Advise</p>
        <p>Lorem ipsum dolor sit amet consectetur. Vel scelerisque quis donec enim augue nulla nunc id. Netus sollicitudin iaculis ultricies odio maecenas. Tristique aenean eget dui massa. </p>
            </div>
        </section>
    )
}
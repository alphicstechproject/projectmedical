import { useState } from "react"
import primaryFill from "../images/Primary fill.png"
import exportImage from "../images/export.png"
import Footer from "./Footer"
import { apiUrl } from "../url"
export default function CreateUser({toggleAddUser, userId, employeeid, blocks, addUserToList}) {
    const [userFullName, setUserFullName] = useState("")
    const [userName, setUserName] = useState("")
    const [phoneNum, setPhoneNum] = useState("")
    const [district, setDistrict] = useState("")
    const [block, setBlock] = useState("sss")
    const [password, setPassword] = useState("")
    const [confirmPassword, setConfirmPassword] = useState("")
    const [userRole, setUserRole] = useState("Super Admin")
    const [villageName, setVillageName] = useState(null)
    const [anan, setAnan] = useState(null)
    const [subcentre, setSubcentre] = useState(null)
    const [hospitalName, setHospitalName] = useState(null)
    const [message, setMessage] = useState("")
    
    async function handleSubmit(){
        
        const response = await fetch(`${apiUrl}employee`, {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
                "authorization" : localStorage.getItem(employeeid)
            },
            body: JSON.stringify({
            
                full_name:userFullName,
                employee_name:userName,
                mobile:phoneNum,
                district,
                block_name:block,
                password,
                
                role:userRole,
                village_name:villageName,
                anganwadi_center: anan,
                sub_center:subcentre,
                hospitalName,
            }),
        })
        const resJson = await response.json()
        if(resJson.status){
            addUserToList(resJson.data)
        
        }
        resJson.status ? toggleAddUser() : setMessage(resJson.message);
    }
    
    return (
        <section className="section">
            
            <form onSubmit={(e) => {
                e.preventDefault()
                handleSubmit()
                }
            }>
                <div className="formHeader">
                <img className="backIcon" onClick={() => toggleAddUser()} src={primaryFill} />
                <h1>Create User</h1>
                <button className="exportButton submitUser"><img src={exportImage} />Save</button>
                </div>
                <div className="userFormSection1">
                <label className="userInputs"><div>User Full Name <span className="colorRed">*</span></div><input className="userFormInputs" value={userFullName} onChange={(e) => setUserFullName(e.target.value)} type="text" placeholder="Enter User Full Name" required /></label>

                <label className="userInputs">User Name<input className="userFormInputs" value={userName} onChange={(e) => setUserName(e.target.value)} type="text" placeholder="Enter user name" required/></label>

                <label className="userInputs"><div>Phone Number <span className="colorRed">*</span></div><input className="userFormInputs" value={phoneNum} onChange={(e) => setPhoneNum(e.target.value)} type="text" placeholder="Enter phone number" required /></label>

                <label className="userInputs"><div>District <span className="colorRed">*</span></div><input className="userFormInputs" value={district} onChange={(e) => setDistrict(e.target.value)} type="text" placeholder="Enter district" required /></label>

                <label className="userInputs"><div>Block <span className="colorRed">*</span></div><select className="userFormInputs" value={block} onChange={(e) => setBlock(e.target.value)} type="text" placeholder="Enter block" required>
                {
                        blocks.map((block, index) => {
                            return <option key={index} value={block}>{block}</option>
                        })
                    }
                    </select></label>

                <label className="userInputs"><div>Password <span className="colorRed">*</span></div><input className="userFormInputs" value={password} onChange={(e) => setPassword(e.target.value)} type="password" placeholder="Enter password" required /></label>

                <label className="userInputs"><div>Confirm Password <span className="colorRed">*</span></div><input className="userFormInputs" value={confirmPassword} onChange={(e) => setConfirmPassword(e.target.value)} type="password" placeholder="Enter confirm password" required /></label>

                </div>
                <h1 className="userInputs">User Profile <span className="colorRed">*</span></h1>

                <label className="userInputs">User Role<select className="userFormInputs" value={userRole} onChange={(e) => setUserRole(e.target.value)} type="text" placeholder="User Role" required >
                    <option>Super Admin</option>
                    <option>District Administrative</option>
                    <option>Block Administrative</option>
                    <option>Special screening team</option>
                    <option>Hospital</option>
                    <option>ANM</option>
                    <option>ASHA worker</option>
                    </select></label>
                    {userRole === "ANM" || userRole === "Hospital" ?  <>
                <h1 className="userInputs">Other Details</h1>
                {userRole === "ANM" ? <label className="userInputs">Village Name<input className="userFormInputs" value={villageName} onChange={(e) => setVillageName(e.target.value)} type="text" placeholder="Enter Village name"/></label> : null}

                {userRole === "ANM" ? <label className="userInputs">Anaganbadi Name<input className="userFormInputs" value={anan} onChange={(e) => setAnan(e.target.value)} type="text" placeholder="Enter Anaganbadi name"/></label> : null}

                {userRole === "ANM" ? <label className="userInputs">Sub-center name<input className="userFormInputs" value={subcentre} onChange={(e) => setSubcentre(e.target.value)} type="text" placeholder="Enter Sub-center name"/></label> : null}

                {userRole === "Hospital" ? <label className="userInputs">Hospital name<input className="userFormInputs" value={hospitalName} onChange={(e) => setHospitalName(e.target.value)} type="text" placeholder="Enter Hospital name"/></label> : null}</> : null }
            </form>
            <p>{message}</p>
            <Footer />
        </section>
    )
}
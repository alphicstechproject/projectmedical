import { useState } from "react"
import primaryFill from "../images/Primary fill.png"
export default function CreateUser({toggleAddUser, userId}) {
    const [userFullName, setUserFullName] = useState("")
    const [userName, setUserName] = useState("")
    const [phoneNum, setPhoneNum] = useState("")
    const [district, setDistrict] = useState("")
    const [block, setBlock] = useState("")
    const [password, setPassword] = useState("")
    const [confirmPassword, setConfirmPassword] = useState("")
    const [userRole, setUserRole] = useState("")
    const [villageName, setVillageName] = useState("")
    const [anan, setAnan] = useState("")
    const [subcentre, setSubcentre] = useState("")
    const [hospitalName, setHospitalName] = useState("")
    
    async function handleSubmit(){
        
        const response = await fetch("createUser", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                userId,
                userFullName,
                userName,
                phoneNum,
                district,
                block,
                password,
                confirmPassword,
                userRole,
                villageName,
                anaganbadiName: anan,
                subcentre,
                hospitalName,
            }),
        })
        const resJson = await response.json()
        console.log(userFullName);
    }
    
    return (
        <section>
            <div>
                <img onClick={() => toggleAddUser()} src={primaryFill} />
                <h1>Create User</h1>
                
            </div>
            <form onSubmit={(e) => {
                e.preventDefault()
                handleSubmit()
                }
            }>
                <input type="submit" value="Save" />
                <label>User Full Name<input value={userFullName} onChange={(e) => setUserFullName(e.target.value)} type="text" placeholder="Enter User Full Name" required /></label>

                <label>User Name<input value={userName} onChange={(e) => setUserName(e.target.value)} type="text" placeholder="Enter user name"/></label>

                <label>Phone Number<input value={phoneNum} onChange={(e) => setPhoneNum(e.target.value)} type="text" placeholder="Enter phone number" required /></label>

                <label>District<input value={district} onChange={(e) => setDistrict(e.target.value)} type="text" placeholder="Enter district" required /></label>

                <label>Block<select value={block} onChange={(e) => setBlock(e.target.value)} type="text" placeholder="Enter block" required>
                    <option>sdd</option>
                    </select></label>

                <label>Password<input value={password} onChange={(e) => setPassword(e.target.value)} type="password" placeholder="Enter password" required /></label>

                <label>Confirm Password<input input value={confirmPassword} onChange={(e) => setConfirmPassword(e.target.value)} type="password" placeholder="Enter confirm password" required /></label>
                <h1>User Profile</h1>

                <label>User Role<select value={userRole} onChange={(e) => setUserRole(e.target.value)} type="text" placeholder="User Role" required >
                    <option>Super Admin</option>
                    <option>District Administrative</option>
                    <option>Block Administrative</option>
                    <option>Special screening team</option>
                    <option>Hospital</option>
                    <option>ANM</option>
                    <option>ASHA worker</option>
                    </select></label>

                <h1>Other Details</h1>
                <label>Village Name<input value={villageName} onChange={(e) => setVillageName(e.target.value)} type="text" placeholder="Enter Village name"/></label>

                <label>Anaganbadi Name<input value={anan} onChange={(e) => setAnan(e.target.value)} type="text" placeholder="Enter Anaganbadi name"/></label>

                <label>Sub-center name<input value={subcentre} onChange={(e) => setSubcentre(e.target.value)} type="text" placeholder="Enter Sub-center name"/></label>

                <label>Hospital name<input value={hospitalName} onChange={(e) => setHospitalName(e.target.value)} type="text" placeholder="Enter Hospital name"/></label>
            </form>
        </section>
    )
}
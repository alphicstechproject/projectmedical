import { useState } from "react"
import { useNavigate } from "react-router-dom"
import "../css/global.css"
import screenshot2023 from "../images/Screenshot_20230111_073157-removebg-preview 4.png"
import {apiUrl} from "../url"
import Footer from "./Footer"

export default function Login(){
    const [userid, setUserId] = useState("")
    const [password, setPassword] = useState("")
    const [rememberMe, setRememberMe] = useState(false)
    const [errorMessage, setErrorMessage] = useState(false)
    const navigate = useNavigate()

    function toggleRemeberMe(){
        setRememberMe((prev) => {
            return !prev
        })
    }
    
    
    async function handleLogin(){
        
        const response = await fetch(`${apiUrl}login`, {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                employee_name: userid, password
            }),
        })
        const resJson = await response.json()
        
        // const resJson = {
        //     status: true
        // }
        if(resJson.status){
            localStorage.setItem(resJson.data.employeeid, resJson.data.token)
            navigate("/DashBoard", { state: { userid, employeeid: resJson.data.employeeid } })
        }
        else{
            setErrorMessage(true)
        }
        
    }

    return (
        <section className="login">
            <div className="logoLang">
            <img src={screenshot2023} className="screenShot" width="30px" />
            <select className="select">
                <option>Englsh US</option>
            </select>
            </div>
            <form className="inputForms" onSubmit={(e) => {
                e.preventDefault()
                handleLogin()
                }}>
                <h1>Welcome Back</h1>
                <p>Please enter your details to get sign in to your account</p>

                <input className="email" value={userid} onChange={(e) => setUserId(e.target.value)} type="text" placeholder="User ID" required />

                <input className="password" value={password} onChange={(e) => setPassword(e.target.value)} type="password" placeholder="Password" required />

                <label className="rememberMe">
                <input  value={rememberMe} onClick={toggleRemeberMe} type="checkbox" />Remember me!</label>

                {errorMessage ? <p className="error">Wrong credentials</p>: null}

                <input className="submit" value="Login" type="submit" />
            </form>
            
            <Footer />
        </section>
    )
}
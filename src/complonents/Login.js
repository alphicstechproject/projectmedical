import { useState } from "react"
import { useNavigate } from "react-router-dom"
import "../css/global.css"
import screenshot2023 from "../images/Screenshot_20230111_073157-removebg-preview 4.png"

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
        // const response = await fetch("/api/loginUser", {
        //     method: "POST",
        //     headers: {
        //         "Content-Type": "application/json",
        //     },
        //     body: JSON.stringify({
        //         userid, password
        //     }),
        // })
        // const resJson = await response.json()
        const resJson = {
            status: true
        }
        
        resJson.status ? navigate("/DashBoard") : setErrorMessage(true)
        
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

                <input className="email" value={userid} onChange={(e) => setUserId(e.target.value)} type="email" placeholder="User ID" required />

                <input className="password" value={password} onChange={(e) => setPassword(e.target.value)} type="password" placeholder="Password" required />

                <label className="rememberMe">
                <input  value={rememberMe} onClick={toggleRemeberMe} type="checkbox" />Remember me!</label>

                {errorMessage ? <p className="error">Wrong credentials</p>: null}

                <input className="submit" value="Login" type="submit" />
            </form>
            
            <div className="footer">
            <span className="version">Version: 1.2</span>
            <span className="design">Design and Develop by Alphics Tech</span>
            </div>
        </section>
    )
}
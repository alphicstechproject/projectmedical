import { useState } from "react"
import "../css/global.css"
import screenshot2023 from "../images/Screenshot_20230111_073157-removebg-preview 4.png"

export default function ResetPassword() {
    const [newPassword, setNewPassword] = useState("")
    const [confirmPassword, setConfirmPassword] = useState("")
    const [rememberMe, setRememberMe] = useState(false)

    function toggleRemeberMe(){
        setRememberMe((prev) => {
            return !prev
        })
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
                }}>
                <h1>Welcome Back</h1>
                <p>Please enter your details to get sign in to your account</p>
                <input className="password" value={newPassword} onChange={(e) => setNewPassword(e.target.value)} type="email" placeholder="New password" required />
                <input className="password" value={confirmPassword} onChange={(e) => setConfirmPassword(e.target.value)} type="password" placeholder="Confirm password" required />
                <label className="rememberMe">
                <input  value={rememberMe} onClick={toggleRemeberMe} type="checkbox" />Remember me!</label>
                <input className="submit" value="Reset Password" type="submit" />
            </form>
            <div className="footer">
            <span className="version">Version: 1.2</span>
            <span className="design">Design and Develop by Alphics Tech</span>
            </div>
        </section>
    )
}
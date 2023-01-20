import { useState } from "react"
import screenShotRed from "../images/Screenshot_20230111_073157-removebg-preview 3.png"
import searchImage from "../images/Combined-Shape.png"
import refreshImage from "../images/refresh.png"
import logoutImage from "../images/Logout.png"
import dashboardImage from "../images/Dashboard.png"
import userImage from "../images/User.png"
import adviseImage from "../images/Advise.png"
import screenImage from "../images/Screen.png"
import DashBoard from "./DashBoard"
import UserManagement from "./UserManagement"
import AdviseManagement from "./AdviseManagement"
import ScreeningManagement from "./ScreeningManagement"
import { useLocation, useNavigate } from "react-router-dom"
import { apiUrl } from "../url"

export default function Header(){
    const location = useLocation()
    const navigate = useNavigate()
    const [menu, setMenu] = useState("Dashboard")
    const [search, setSearch] = useState("")
    const [blocks, setBlocks] = useState([])

    const [currentUserRole, setCurrentUserRole] = useState("")

    function handleSubmit(){

    }
    function handleMenu(menuVal){
        setMenu(menuVal)
    }
    function updateUserRole(role){
        setCurrentUserRole(role)
    }
    async function getDistrictsBlocks(){
        
        const response = await fetch(`${apiUrl}block`)
        const resJson = await response.json()
         
        setBlocks(resJson.data)
    }
    async function getUserData(){
        const response = await fetch(`${apiUrl}employee/${location.state.employeeid}`,{
            headers: {
                "authorization" : localStorage.getItem(location.state.employeeid)
            }
        })
        const resJson = await response.json()
    }
    async function logout(){
        const response = await fetch(`/logout?userId=${location.state.userId}`)
        localStorage.removeItem(location.state.employeeid)
        navigate("/")
    }
    useState(() => {
        getUserData()
        getDistrictsBlocks()
    }, [])
    return (<>
        <header className="header">
            <section className="imageSearch">
            <img src={screenShotRed} width="40px" height="70px"/>
            <p className="headerpara">Anemia Mukta Kalahandi</p>
            
            
            <img onClick={logout} className="imageButton" src={logoutImage} />
            </section>
            <nav className="menu">
                <div onClick={() => handleMenu("Dashboard")} className="navItem navMargin">
                    <img className="specialImage" src={dashboardImage} />
                    <p className="navOption">Dashboard</p>
                </div>
               {currentUserRole === "Admin" && <div onClick={() => handleMenu("User Management")} className="navItem">
                    <img src={userImage} />
                    <p className="navOption">User Management</p>
                </div>}
                { currentUserRole === "Admin" && <div onClick={() => handleMenu("Advise Management")} className="navItem">
                    <img src={adviseImage} />
                    <p className="navOption">Advise Management</p>
                </div>}
                <div onClick={() => handleMenu("Screening Management")} className="navItem">
                    <img src={screenImage} />
                    <p className="navOption">Screen Management</p>
                </div>
            </nav>
        </header>
        {
            menu === "Dashboard" && <DashBoard userId={location.state.userid} currentUserRole={currentUserRole} updateUserRole={updateUserRole} employeeid = {location.state.employeeid}/>
            
        }
        {
            menu === "User Management" && <UserManagement userId={location.state.userid} currentUserRole={currentUserRole} updateUserRole={updateUserRole} blocks={blocks} employeeid = {location.state.employeeid}/>
        }
        {
            menu === "Advise Management" && <AdviseManagement userId={location.state.userid} employeeid = {location.state.employeeid} />
        }
        {
            menu === "Screening Management" && <ScreeningManagement userId={location.state.userid} blocks={blocks} employeeid={location.state.employeeid}/>
        }
        </>
    )
}
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
import { useLocation } from "react-router-dom"

export default function Header(){
    const location = useLocation()
    const [menu, setMenu] = useState("Dashboard")
    const [search, setSearch] = useState("")
    function handleSubmit(){

    }
    function handleMenu(menuVal){
        setMenu(menuVal)
    }
    return (<>
        <header className="header">
            <section className="imageSearch">
            <img src={screenShotRed} width="40px" height="70px"/>
            <p className="headerpara">Anemia Mukta Kalahandi</p>
            <form className="searchForm" onSubmit={(e) => {
                e.preventDefault()
                handleSubmit()
                }}>
                <input className="searchInput" type="text" value={search} onChange={e => setSearch(e.target.value)} placeholder="Search" />
                <input className="searchButton" width="18px" height="18px" type="image" src={searchImage} border="0" alt="Submit" />
            </form>
            <img className="imageButtuon" src={refreshImage} />
            <img className="imageButton" src={logoutImage} />
            </section>
            <nav className="menu">
                <div onClick={() => handleMenu("Dashboard")} className="navItem navMargin">
                    <img className="specialImage" src={dashboardImage} />
                    <p>Dashboard</p>
                </div>
                <div onClick={() => handleMenu("User Management")} className="navItem">
                    <img src={userImage} />
                    <p>User Management</p>
                </div>
                <div onClick={() => handleMenu("Advise Management")} className="navItem">
                    <img src={adviseImage} />
                    <p>Advise Management</p>
                </div>
                <div onClick={() => handleMenu("Screening Management")} className="navItem">
                    <img src={screenImage} />
                    <p>Screen Management</p>
                </div>
            </nav>
        </header>
        {
            menu === "Dashboard" && <DashBoard />
            
        }
        {
            menu === "User Management" && <UserManagement userId={location.state.userid} />
        }
        {
            menu === "Advise Management" && <AdviseManagement />
        }
        {
            menu === "Screening Management" && <ScreeningManagement />
        }
        </>
    )
}
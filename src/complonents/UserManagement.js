import { useEffect, useState } from "react"
import searchImage from "../images/Combined-Shape.png"
import CreateUser from "./CreateUser"
export default function UserManagement({userId, currentUserRole, updateUserRole}){
    const [search, setSearch] = useState("")
    const [addUser, setAddUser] = useState(false)
    const [tableData, setTableData] = useState([{
        userName: "Mili Brown",
        phoneNum: "+91- 8231-324-123",
        userRole: "Admin",
        status: "ACTIVE",
        createdDate: "02-8-2022,10-21 PM",
        Action: "figvc"
    },{
        userName: "Mili Brown",
        phoneNum: "+91- 8231-324-123",
        userRole: "Manager",
        status: "INACTIVE",
        createdDate: "02-8-2022,10-21 PM",
        Action: "figvc"
    }, {
        userName: "Mili Brown",
        phoneNum: "+91- 8231-324-123",
        userRole: "Screening Team",
        status: "ACTIVE",
        createdDate: "02-8-2022,10-21 PM",
        Action: "figvc"
    }])
    function toggleAddUser(){
        setAddUser(prev => {
            return !prev
        })
    }
    function handleSubmit(){

    }
    async function deleteUser(phoneNumber){
        // const response = await fetch("/deleteUser", {
        //     method: 'DELETE',
        //     headers: {
        //         "Content-Type": "application/json",
        //     },
        //     body: JSON.stringify({
        //         phoneNumber: phoneNumber,
        //         userId: userId
        //     }),
        // })
        
    }
    async function fetchUsersData(){
        // const response = await fetch(`getUserManagementDetails?userId=${userId}`, {
        //     method: 'GET'
        // })
        console.log(userId);
    }
    useEffect(() => {
        fetchUsersData()
    }, [])
    return (
        <>
        {
            addUser ? <CreateUser toggleAddUser={toggleAddUser} userId={userId} /> :
        
        <section>
            <div>
                <h1>User Management</h1>
                <select name="Month" id="cars">
                    <option value="Month">Month</option>
                    <option value="volvo">January</option>
                    <option value="saab">February</option>
                    <option value="mercedes">March</option>
                    <option value="audi">April</option>
                    <option value="volvo">May</option>
                    <option value="saab">June</option>
                    <option value="mercedes">July</option>
                    <option value="audi">August</option>
                    <option value="volvo">September</option>
                    <option value="saab">October</option>
                    <option value="mercedes">November</option>
                    <option value="audi">December</option>
                </select>
            </div>
            <div>
            <form className="searchForm searchForm2" onSubmit={(e) => {
                e.preventDefault()
                handleSubmit()
                }}>
                <input className="searchInput" type="text" value={search} onChange={e => setSearch(e.target.value)} placeholder="Search" />
                <input className="searchButton" width="18px" height="18px" type="image" src={searchImage} border="0" alt="Submit" />
            </form>
            <select>
                <option>Sort</option>
                <option>User Name</option>
                <option>Phone Number</option>
                <option>User Role</option>
                <option>Status</option>
                <option>CreatedDate</option>
            </select>
            <select>
                <option>Status</option>
                <option>Active</option>
                <option>Inactive</option>
            </select>
            <button>Export</button>
            <button onClick={() => toggleAddUser()}>Add User</button>
            </div>
            <div>
            <table className="tableSectionDashboard">
            <thead className="tableHeadDashboard">
                <tr className="tableHeadDashboard">
                    <th className="dashboardTableHeader">#</th>
                    <th className="dashboardTableHeader">User Name</th>
                    <th className="dashboardTableHeader">Phone Number</th>
                    <th className="dashboardTableHeader">User Role</th>
                    <th className="dashboardTableHeader">Status</th>
                    <th className="dashboardTableHeader">Created Date</th>
                    <th className="dashboardTableHeader">Action</th>
                </tr>
            </thead>
            <tbody>
                {
                    tableData.map((data, index) => {
                      return  <tr key={index}>
                    <td className="tableItemsDash">{index + 1}</td>
                    <td className="tableItemsDash">{data.userName}</td>
                    <td className="tableItemsDash">{data.phoneNum}</td>
                    <td className="tableItemsDash">{data.userRole}</td>
                    <td className="tableItemsDash">{data.status}</td>
                    <td className="tableItemsDash">{data.createdDate}</td>
                    <td onClick={() => {deleteUser(data.phoneNum)}} className="tableItemsDash">{data.Action}</td>
                </tr>
                    })
                
                }
            </tbody>
        </table>
            </div>
        </section>
        }
        </>
    )
}
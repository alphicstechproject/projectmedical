import { useEffect, useState } from "react"
import searchImage from "../images/Combined-Shape.png"
import CreateUser from "./CreateUser"
import deleteIcon from "../images/deleteIcon.png"
import * as XLSX from 'xlsx';
import exportImage from "../images/export.png"
import mathPlus from "../images/math-plus.png"
import userImage from "../images/photo234.png"
import Footer from "./Footer";
import { apiUrl } from "../url";
export default function UserManagement({userId, currentUserRole, updateUserRole,blocks, employeeid}){
    const [search, setSearch] = useState("")
    const [addUser, setAddUser] = useState(false)
    const [sortOption, setSortOption] = useState("Sort")
    const [statusOption, setStatusOption] = useState("Status")
    const [ masterTable, setMasterTable ] = useState([])
    
    const [tableData, setTableData] = useState([])
    function toggleAddUser(){
        setAddUser(prev => {
            return !prev
        })
    }
    function handleSubmit(){
        setTableData(masterTable.filter(row => (row.full_name.toLowerCase() === search.toLowerCase() || row.mobile.toLowerCase() === search.toLowerCase() || row.createdAt.toLowerCase() === search.toLowerCase() || row.status.toLowerCase() === search.toLowerCase() || row.role.toLowerCase() === search.toLowerCase())))
    }
    async function deleteUser(id){

        setTableData((prev) => {
            return prev.filter((row) => row._id !== id)
        })
        const response = await fetch(`${apiUrl}employee/${id}`, {
            method: 'DELETE',
            headers: {
                "authorization" : localStorage.getItem(employeeid)
            },
        })
        
    }
    function addUserToList(newUser){
        setMasterTable(prev => {
            return [...prev, newUser]
        })
        setTableData(prev =>{
            return [...prev, newUser]
        })
    }
    async function fetchUsersData(){
        
        const response = await fetch(`${apiUrl}employee`, {
            method: 'GET',
            headers: {
                "authorization" : localStorage.getItem(employeeid)
            }
        })
        const resJson = await response.json()
        setTableData(resJson.data)
        setMasterTable(resJson.data)
        console.log(resJson.data);
    }
    function handleSort(sortOption){
        const newArray = [...tableData].sort((a, b) => (a[sortOption] > b[sortOption]) ? 1 : -1);
        setTableData(newArray)
    }
    function saveAsExcel(){
        var table = document.getElementById("excelTable");
        var wb = XLSX.utils.table_to_book(table);
        XLSX.writeFile(wb, "UsersTable.xlsx");
    }
    useEffect(() => {
        fetchUsersData()
    }, [])
    useEffect(() => {
        handleSort(sortOption)
    }, [sortOption])
    useEffect(() => {
        setTableData(masterTable.filter(row => row.status === statusOption || statusOption === "Status"))
    }, [statusOption])
    
    return (
        <>
        {
            addUser ? <CreateUser toggleAddUser={toggleAddUser} userId={userId} employeeid={employeeid} blocks={blocks} addUserToList={addUserToList}/> :
        
        <section className="section">
            <div>
                <h1 className="tableHeading">User Management</h1>
                
            </div>
            <div className="userOptions">
            <form className="searchForm searchForm2" onSubmit={(e) => {
                e.preventDefault()
                handleSubmit()
                }}>
                <input className="searchInput" type="text" value={search} onChange={e => setSearch(e.target.value)} placeholder="Search" />
                <input className="searchButton" width="18px" height="18px" type="image" src={searchImage} border="0" alt="Submit" />
            </form>
            <select className="sortOption" value={sortOption} onChange={(e) => setSortOption(e.target.value)}>
            
                <option value={"All"}>Sort</option>
                <option value="full_name">User Name</option>
                <option value="mobile">Phone Number</option>
                <option value="role">User Role</option>
                <option value="status">Status</option>
                <option value="createdAt">CreatedDate</option>
            </select>
            <select className="statusOption" value={statusOption} onChange= {(e) => setStatusOption(e.target.value)}>
                <option value="Status">Status</option>
                <option value="ACTIVE">ACTIVE</option>
                <option value="INACTIVE">INACTIVE</option>
            </select>
            <button className="exportButton" onClick={saveAsExcel}><img src={exportImage} />Export</button>
            <button className="addButton" onClick={() => toggleAddUser()}><img src={mathPlus} />Add User</button>
            </div>
            <div>
            <table className="tableSectionUser">
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
                    <td id = {index % 2 ? "extraBackground" : ""} className="tableItemsDash">{index + 1}</td>
                    <td id = {index % 2 ? "extraBackground" : ""} className="tableItemsDash flexRow"><img src={userImage} width="30px" />{data.full_name}</td>
                    <td id = {index % 2 ? "extraBackground" : ""} className="tableItemsDash">{data.mobile}</td>
                    <td id = {index % 2 ? "extraBackground" : ""} className="tableItemsDash">{data.role}</td>
                    <td id = {index % 2 ? "extraBackground" : ""} className={data.status === "ACTIVE" ?"tableItemsDash activeRow" : "tableItemsDash inactiveRow"}>{data.status}</td>
                    <td id = {index % 2 ? "extraBackground" : ""} className="tableItemsDash">{String(data.createdAt).slice(0,10)}</td>
                    <td id = {index % 2 ? "extraBackground" : ""} onClick={() => {deleteUser(data._id)}} className="tableItemsDash tableHover"><img src={deleteIcon} width="15px" /></td>
                </tr>
                    })
                
                }
            </tbody>
        </table>
            </div>
            <table id="excelTable" className="tableSectionUser">
            <thead className="tableHeadDashboard">
                <tr className="tableHeadDashboard">
                <th >Sr No.</th>
                    <th >Fulll Name</th>
                    <th>Employee Name</th>
                    <th>District</th>
                    <th >Mobile Number</th>
                    <th >Role</th>
                    <th >Status</th>
                    <th >Date of creation</th>
                    <th>Anganwadi center</th>
                    <th>Block name</th>
                    <th>subcenter</th>
                    <th>Village</th>
                    
                </tr>
            </thead>
            <tbody>
                {
                    tableData.map((data, index) => {
                      return  <tr key={index}>
                    <td >{index + 1}</td>
                    <td >{data.full_name}</td>
                    <td>{data.employee_name}</td>
                    <td>{data.district}</td>
                    <td >{data.mobile}</td>
                    <td >{data.role}</td>
                    <td >{data.status}</td>
                    <td >{data.createdAt}</td>
                    <td>{data.anganwadi_center}</td>
                    <td>{data.block_name}</td>
                    <td>{data.sub_center}</td>
                    <td>{data.village_name}</td>
                </tr>
                    })
                
                }
            </tbody>
        </table>
            <Footer />
        </section>
        }
        </>
    )
}
import { useEffect, useState } from "react"
import searchImage from "../images/Combined-Shape.png"
import * as XLSX from 'xlsx';
import deleteIcon from "../images/deleteIcon.png"
import CreateNewAdvise from "./CreateNewAdvise"
import exportImage from "../images/export.png"
import mathPlus from "../images/math-plus.png"
import Footer from "./Footer";
import { apiUrl } from "../url";
export default function AdviseManagement({userId, employeeid}) {
    const [search, setSearch] = useState("")
    const [adviseForm, setAdviseForm] = useState(false)
    const [sortOption, setSortOption] = useState("Sort")
    const [masterTable, setMasterTable] = useState([])
    const [tableData, setTableData] = useState([])
    function toggleAdviseForm(){
        setAdviseForm(prev => {
            return !prev
        })
    }
    function handleSubmit(){

    }
    async function deleteAdvise(id){
        setTableData((prev) => {
            return prev.filter((row) => row._id !== id)
        })
        const response = await fetch(`${apiUrl}advice/${id}`, {
            method: 'DELETE',
            headers: {
                "authorization" : localStorage.getItem(employeeid)
            }
        })
        
    }
    async function fetchAdviseData(){
        
        const response = await fetch(`${apiUrl}advice`, {
            method: 'GET',
            headers: {
                "authorization" : localStorage.getItem(employeeid)
            }
        })
        const resJson = await response.json()
        setTableData(resJson.data)
        setMasterTable(resJson.data)
    }
    function handleSort(sortOption){
        const newArray = [...tableData].sort((a, b) => (a[sortOption] > b[sortOption]) ? 1 : -1);
        setTableData(newArray)
    }
    function saveAsExcel(){
        var table = document.getElementById("adviseTable");
        var wb = XLSX.utils.table_to_book(table);
        XLSX.writeFile(wb, "AdviseTable.xlsx");
    }
    function addAdvise(title, des){
        setMasterTable(prev => {
            return [...prev, {respondent_title: title, description: des}]
        })
        setTableData(prev => {
            return [...prev, {respondent_title: title, description: des}]
        })
    }
    function handleSubmit(){
        setTableData(masterTable.filter(row => (row.respondent_title.toLowerCase() === search.toLowerCase() || row.description === search.toLowerCase())))
    }
    useEffect(() => {
        handleSort(sortOption)
    }, [sortOption])
    useEffect(() => {
        fetchAdviseData()
    }, [])
    return (
        <>
        {
            adviseForm ? <CreateNewAdvise toggleAdviseForm={toggleAdviseForm} userId={userId} employeeid={employeeid} addAdvise={addAdvise} /> :
        <section className="section">
            <div>
                <h1 className="tableHeading">Advise Management</h1>
                
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
                <option value="All">Sort</option>
                <option value="respodent_title">Respondent Name</option>
                <option value="description">Descrition</option>
                
            </select>
            
            <button className="exportButton" onClick={saveAsExcel}><img src={exportImage} />Export</button>
            <button className="addButton" onClick={() => toggleAdviseForm()}><img src={mathPlus} />Add Advise</button>
            </div>
            <div>
            <table id="adviseTable" className="tableSectionUser">
            <thead className="tableHeadDashboard">
                <tr className="tableHeadDashboard">
                    <th className="dashboardTableHeader">#</th>
                    <th className="dashboardTableHeader">Respondent Type</th>
                    <th className="dashboardTableHeader">Description</th>
                    <th className="dashboardTableHeader">Action</th>
                   
                    
                </tr>
            </thead>
            <tbody>
                {
                    tableData.map((data, index) => {
                      return  <tr key={index}>
                    <td id = {index % 2 ? "extraBackground" : ""} className="tableItemsDash">{index + 1}</td>
                    <td id = {index % 2 ? "extraBackground" : ""} className="tableItemsDash">{data.respondent_title}</td>
                    <td id = {index % 2 ? "extraBackground" : ""} className="tableItemsDash">{data.description}</td>
                    <td id = {index % 2 ? "extraBackground" : ""} onClick={() => {deleteAdvise(data._id)}} className="tableItemsDash"><img src={deleteIcon} width="15px" /></td>
                   
                    
                </tr>
                    })
                
                }
            </tbody>
        </table>
            </div>
            <Footer />
        </section>
        }
        </>
    )
}
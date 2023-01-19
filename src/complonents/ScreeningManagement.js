import { useEffect, useState } from "react"
import searchImage from "../images/Combined-Shape.png"
import * as XLSX from 'xlsx';
import UserDetails from "./UserDetails"
import deleteIcon from "../images/deleteIcon.png"
import exportImage from "../images/export.png"
import cross from "../images/cross.png"
import Footer from "./Footer";
import { useLocation } from "react-router-dom";
import { apiUrl } from "../url";
export default function ScreeningManagement({userId, blocks, employeeid}){

    const [search, setSearch] = useState("")
    const [startDate, setStartDate] = useState()
    const [endDate, setEndDate] = useState()
    const [adharNum, setAdharNum] = useState("")
    const [block, setBlock] = useState("")
    const [village, setVillage] = useState("")
    const [status, setStatus] = useState("")
    const [bloodR, setBloodR] = useState("")
    const [toggleFilter, setToggleFilter] = useState(false)
    const [createForm, setCreateForm] = useState(false)
    const [userDetails, setUserDetails] = useState("")
    const [selectedValue, setSelectedValue] = useState("");
    const [masterTable, setMasterTable] = useState([])
    const [screenings, setScreenings] = useState([])
    function handleSubmit(){
    
        setScreenings(masterTable.filter(row => (row._id.toLowerCase() === search.toLowerCase() || row.updatedAt.toLowerCase() === search.toLowerCase() || row.respondent_name.toLowerCase() === search.toLowerCase() || row.screening_no.toLowerCase() === search.toLowerCase() || row.status_question_two.toLowerCase() === search.toLowerCase() || row.village.toLowerCase() === search.toLowerCase())))
    }
    function toggleUserDetail(currentAdhar){
        setAdharNum(currentAdhar)
    }
    function exit(){
        setUserDetails("")
    }
    useEffect(() => {
        setUserDetails("render")
    }, [adharNum])
    useEffect(() => {
        setUserDetails("")
    }, [])
    function saveAsExcel(){
        var table = document.getElementById("screeningTable");
        var wb = XLSX.utils.table_to_book(table);
        XLSX.writeFile(wb, "ScreeningData.xlsx");
    }
    function createFormShow(){
        setCreateForm(prev => {
            return !prev
        })
    }
    
    async function getFilteredData(){
        
        const response = await fetch(`${apiUrl}screening?block=${block}&village=${village}&status_question_two=${status}&type_of_respondent=${selectedValue}`, {
            headers: {
                "authorization" : localStorage.getItem(employeeid)
            },
        })
        const resJson = await response.json()
        
        setScreenings(resJson.data)
        setMasterTable(resJson.data)
    }
    async function deleteScreening(respondentName){

        setScreenings((prev) => {
            return prev.filter((row) => row.nameRes !== respondentName)
        })
        const response = await fetch("/deleteScreening", {
            method: 'DELETE',
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                phoneNumber: respondentName,
                userId: userId
            }),
        })
        
    }
    
   
    return (
        <>{ 
            userDetails === "render" ? <UserDetails userId={userId} toggleUserDetail={toggleUserDetail} adharNumProp={adharNum} employeeid={employeeid} exit={exit} /> :
           <section className="section">
            <h1 className="tableHeading">Screening Management</h1>
              <div className="userOptions">
                
                <form className="searchForm searchForm2" onSubmit={(e) => {
                e.preventDefault()
                    handleSubmit()
                }}>
                <input className="searchInput" type="text" value={search} onChange={e => setSearch(e.target.value)} placeholder="Search" />
                <input className="searchButton" width="18px" height="18px" type="image" src={searchImage} border="0" alt="Submit" />
            </form>
            <select onClick={() => {setToggleFilter(prev => !prev)}} className="sortOption filterOption">Filter
                <option value="Filter">Filter</option>
            </select>

            <button className="exportButton" onClick={saveAsExcel}><img src={exportImage} />Export</button>
            </div>
            
            <div>
            <table id="screeningTable" className="tableSectionUser">
            <thead className="tableHeadDashboard">
                <tr className="tableHeadDashboard">
                    <th className="dashboardTableHeader">ID and Aadhar card</th>
                    <th className="dashboardTableHeader">Name od Respondent</th>
                    <th className="dashboardTableHeader">Village</th>
                    <th className="dashboardTableHeader">Status</th>
                    <th className="dashboardTableHeader">No. of screening</th>
                    <th className="dashboardTableHeader">Last Update</th>
                    <th className="dashboardTableHeader">Action</th>
                </tr>
            </thead>
            <tbody>
                {
                    screenings.map((data, index) => {
                      return  <tr key={index}>
                    <td id = {index % 2 ? "extraBackground" : ""} onClick={() => toggleUserDetail(data._id)} className="tableItemsDash click">{data._id}</td>
                    <td id = {index % 2 ? "extraBackground" : ""} className="tableItemsDash">{data.respondent_name}</td>
                    <td id = {index % 2 ? "extraBackground" : ""} className="tableItemsDash">{data.village}</td>
                    <td id = {index % 2 ? "extraBackground" : ""} className={data.status_question_two.toLowerCase() === "Anaemia" ? "tableItemsDash anemiaStatusRed" : "tableItemsDash anemiaStatusGreen"}>{data.status_question_two}</td>
                    <td id = {index % 2 ? "extraBackground" : ""} className="tableItemsDash">{data.screening_no}</td>
                    <td id = {index % 2 ? "extraBackground" : ""} className="tableItemsDash">{data.updatedAt.slice(0, 10)}</td>
                    <td id = {index % 2 ? "extraBackground" : ""} onClick={() => {deleteScreening(data.nameRes)}}><img src={deleteIcon} width="15px" /></td>
                </tr>
                    })
                
                }
            </tbody>
        </table>



            </div>
            <div className={toggleFilter ? "filterSection showFilter" : "filterSection hideFilter"}>
                <p className="filterHeading"><span>Filter</span> <img onClick={() => {setToggleFilter(prev => !prev)}} src={cross} /></p>
                <form className="filterSectionForm" onSubmit={(e) => {
                    e.preventDefault()
                    getFilteredData()
                }}>
                    <span>Block</span>
                    <select className="userFormInputs" value={block} onChange={(e) => setBlock(e.target.value)} type="text">
                    <option value="">Select Block</option>
                    
                    {
                        blocks.map((block, index) => {
                            return <option key={index} value={block}>{block}</option>
                        })
                    }
                    </select>
                    
                    <span>Village</span>
                    <input className="userFormInputs" value={village} onChange={(e) => setVillage(e.target.value)} type="text" />
                    
                    <span>Status</span>
                    <select className="userFormInputs" value={status} onChange={(e) => setStatus(e.target.value)} type="text" >
                    <option value="">Status</option>
                    <option value="All">All</option>
                    <option value="Moderate Anaemia">Moderate Anaemia</option>
                    <option value="Mild Anaemia">Mild Anaemia</option>
                    <option value="No Anaemia">No Anaemia</option>
                    <option value="Severe Anaemia">Severe Anaemia</option>
                    </select>
                

                    
                    <span>Blood transfusion Report</span>
                    <select className="userFormInputs" value={bloodR} onChange={(e) => setBloodR(e.target.value)} type="text">
                    <option value="All">No needed</option>
                    <option value="All">All</option>
                    <option value="Advise to take Blood">Advise to take Blood</option>
                    <option value="Recently take Blood Report">Recently take Blood Report</option>
                    </select>
                    
            <div className="radioInputs">
                <span>Report</span>
                <span>
                <input className="userFormInputs"
                type="radio" value="" checked={selectedValue === ""} onChange=        {(e) => setSelectedValue(e.target.value)} />All</span>
            <span>
            <input type="radio" value="Pregnant Women" checked={selectedValue === "Pregnant Women"} onChange=     {(e) => setSelectedValue(e.target.value)}
            />Pregnant Women</span>
            <span>
            <input type="radio" value="Adl. Girls (School Going)" checked={selectedValue === "Adl. Girls (School Going)"} onChange=     {(e) => setSelectedValue(e.target.value)}
            />Adl. Girls (School Going)</span>
            <span>
            <input type="radio" value="Adl. Girls (Non-School Going)" checked={selectedValue === "Adl. Girls (Non-School Going)"} onChange=     {(e) => setSelectedValue(e.target.value)}
            />Adl. Girls (Non-School Going)</span>
            
            </div>
            {/* <input className="userFormInputs" type="date" value={startDate} onChange={(e) => setStartDate(e.target.value)} />
            <input className="userFormInputs" type="date" value={endDate} onChange={(e) => setEndDate(e.target.value)} /> */}
            
                <input className="exportButton" type="submit" value="Apply Filter" />
            </form>
            </div>
            <Footer />
        </section>
        }</>
    )
}
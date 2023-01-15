import { useEffect, useState } from "react"
import searchImage from "../images/Combined-Shape.png"

import UserDetails from "./UserDetails"

export default function ScreeningManagement({userId, blocks, villages}){
    const [search, setSearch] = useState("")
    const [startDate, setStartDate] = useState("All")
    const [endDate, setEndDate] = useState("All")
    const [adharNum, setAdharNum] = useState("")
    const [block, setBlock] = useState("All")
    const [village, setVillage] = useState("All")
    const [status, setStatus] = useState("All")
    const [bloodR, setBloodR] = useState("All")
    const [createForm, setCreateForm] = useState(false)
    const [userDetails, setUserDetails] = useState(false)
    const [selectedValue, setSelectedValue] = useState("All");
    const [screenings, setScreenings] = useState([
        {
            adhar: "1111-1578-8545",
            nameRes: "Miral Tripathi",
            village: "Madnipur",
            status: "No Anaemia",
            numOfScreening: 1,
            lastUpdate: "02-8-2022"
        },
        {
            adhar: "1111-1578-8547",
            nameRes: "Miral Tripathi",
            village: "Madnipur",
            status: "No Anaemia",
            numOfScreening: 1,
            lastUpdate: "02-8-2022"
        },
        {
            adhar: "1111-1578-8549",
            nameRes: "Miral Tripathi",
            village: "Madnipur",
            status: "Anaemia",
            numOfScreening: 1,
            lastUpdate: "02-8-2022"
        }]
    )
    function toggleUserDetail(currentAdhar){
        setAdharNum(currentAdhar)
        setCreateForm(false)
        setUserDetails(prev => {
            return !prev
        })
        
    }
    
    function createFormShow(){
        setCreateForm(prev => {
            return !prev
        })
    }
    async function getFilteredData(){
        const response = await fetch("getScreeningData", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                userId,
                block,
                village,
                status,
                bloodTransfusionReport:bloodR,
                report: selectedValue,
                startDate,
                endDate
            }),
        })
    }
    
   
    return (
        <>{ 
            userDetails ? <UserDetails userId={userId} toggleUserDetail={toggleUserDetail} adharNumProp={adharNum} /> :
           <section>
              <div>
                <h1>Screening Management</h1>
                <form className="searchForm searchForm2" onSubmit={(e) => {
                e.preventDefault()
            
                }}>
                <input className="searchInput" type="text" value={search} onChange={e => setSearch(e.target.value)} placeholder="Search" />
                <input className="searchButton" width="18px" height="18px" type="image" src={searchImage} border="0" alt="Submit" />
            </form>
                
            </div>
            <div>
            
            
            <button>Export</button>
            <button onClick={() => {
                setUserDetails(false)
                createFormShow()
            }}>Create Screening</button>
            </div>
            <div>
            <table className="tableSectionDashboard">
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
                    <td onClick={() => toggleUserDetail(data.adhar)} className="tableItemsDash">{data.adhar}</td>
                    <td className="tableItemsDash">{data.nameRes}</td>
                    <td className="tableItemsDash">{data.village}</td>
                    <td className={data.status === "Anaemia" ? "tableItemsDash anemiaStatusRed" : "tableItemsDash anemiaStatusGreen"}>{data.status}</td>
                    <td className="tableItemsDash">{data.numOfScreening}</td>
                    <td className="tableItemsDash">{data.lastUpdate}</td>
                    <td></td>
                </tr>
                    })
                
                }
            </tbody>
        </table>



            </div>
            <div>
                <p>Filter</p>
                <form onSubmit={(e) => {
                    e.preventDefault()
                    getFilteredData()
                }}>
                    <label>Block
                    <select value={block} onChange={(e) => setBlock(e.target.value)} type="text">
                    <option value="All">Select Block</option>
                    
                    {
                        blocks.map((block, index) => {
                            <option key={index} value={block}>{block}</option>
                        })
                    }
                    </select>
                    </label>
                    <label>Village
                    <select value={village} onChange={(e) => setVillage(e.target.value)} type="text" >
                    <option value="All">Select Village</option>
                    {
                        villages.map((village, index) => {
                            <option key={index} value={village}>{village}</option>
                        })
                    }
                    </select>
                    </label>
                    <label>Status
                    <select value={status} onChange={(e) => setStatus(e.target.value)} type="text" >
                    <option value="All">Status</option>
                    <option value="All">All</option>
                    <option value="Moderate Anaemia">Moderate Anaemia</option>
                    <option value="Mild Anaemia">Mild Anaemia</option>
                    <option value="No Anaemia">No Anaemia</option>
                    <option value="Severe Anaemia">Severe Anaemia</option>
                    </select>
                

                    </label>
                    <label>Blood transfusion Report
                    <select value={bloodR} onChange={(e) => setBloodR(e.target.value)} type="text">
                    <option value="All">No needed</option>
                    <option value="All">All</option>
                    <option value="Advise to take Blood">Advise to take Blood</option>
                    <option value="Recently take Blood Report">Recently take Blood Report</option>
                    </select>
                    </label>
                    <div>
                <input
                type="radio" value="All" checked={selectedValue === "All"} onChange=        {(e) => setSelectedValue(e.target.value)} />
            All
            <input type="radio" value="Pregnant Women" checked={selectedValue === "Pregnant Women"} onChange=     {(e) => setSelectedValue(e.target.value)}
            />
            Pregnant Women
            <input type="radio" value="Adl. Girls (School Going)" checked={selectedValue === "Adl. Girls (School Going)"} onChange=     {(e) => setSelectedValue(e.target.value)}
            />
            Adl. Girls (School Going)
            <input type="radio" value="Adl. Girls (Non-School Going)" checked={selectedValue === "Adl. Girls (Non-School Going)"} onChange=     {(e) => setSelectedValue(e.target.value)}
            />
            Adl. Girls (Non-School Going)
            </div>
            <input type="date" value={startDate} onChange={(e) => setStartDate(e.target.value)} />
            <input type="date" value={endDate} onChange={(e) => setEndDate(e.target.value)} />
            
                <input type="submit" value="Apply Filter" />
            </form>
            </div>
        </section>
        }</>
    )
}
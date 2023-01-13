import { useState } from "react"
import searchImage from "../images/Combined-Shape.png"
export default function AdviseManagement() {
    const [search, setSearch] = useState("")
    const [tableData, setTableData] = useState([{
        idAdhar: "shdhb",
        nameRes: "sdgshd",
        village: "sdhsjnfd",
        status: "dshhfd",
        numOfSC: "hgjgf",
        lastUpdate: "figvc"
    },{
        idAdhar: "shdhb",
        nameRes: "sdgshd",
        village: "sdhsjnfd",
        status: "dshhfd",
        numOfSC: "hgjgf",
        lastUpdate: "figvc"
    }, {
        idAdhar: "shdhb",
        nameRes: "sdgshd",
        village: "sdhsjnfd",
        status: "dshhfd",
        numOfSC: "hgjgf",
        lastUpdate: "figvc"
    }])
    function handleSubmit(){

    }
    return (
        <section>
            <div>
                <h1>Advise Management</h1>
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
            </select>
            
            <button>Export</button>
            <button>Add User</button>
            </div>
            <div>
            <table className="tableSectionDashboard">
            <thead className="tableHeadDashboard">
                <tr className="tableHeadDashboard">
                    <th className="dashboardTableHeader">#</th>
                    <th className="dashboardTableHeader">Respondent name</th>
                    <th className="dashboardTableHeader">Description</th>
                    <th className="dashboardTableHeader">Action</th>
                   
                    
                </tr>
            </thead>
            <tbody>
                {
                    tableData.map((data, index) => {
                      return  <tr key={index}>
                    <td className="tableItemsDash">{index + 1}</td>
                    <td className="tableItemsDash">{data.idAdhar}</td>
                    <td className="tableItemsDash">{data.nameRes}</td>
                    <td className="tableItemsDash">{data.village}</td>
                   
                    
                </tr>
                    })
                
                }
            </tbody>
        </table>
            </div>
        </section>
    )
}
import { useState } from "react"
import searchImage from "../images/Combined-Shape.png"
import UserDetails from "./UserDetails"

export default function ScreeningManagement(){
    const [search, setSearch] = useState("")
    const [adharNum, setAdharNum] = useState("")
    const [userDetails, setUserDetails] = useState(false)
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
    function toggleUserDetail(){
        setUserDetails(prev => {
            return !prev
        })
    }
    return (
        <>{ 
            userDetails ? <UserDetails toggleUserDetail={toggleUserDetail} adharNumProp={adharNum} /> :
        <section>
              <div>
                <h1>Screening Management</h1>
                <form className="searchForm searchForm2" onSubmit={(e) => {
                e.preventDefault()
            
                }}>
                <input className="searchInput" type="text" value={search} onChange={e => setSearch(e.target.value)} placeholder="Search" />
                <input className="searchButton" width="18px" height="18px" type="image" src={searchImage} border="0" alt="Submit" />
            </form>
                <select name="Month" id="cars">
                    <option value="Filter">Filter</option>
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
            
            
            <button>Export</button>
            
            </div>
            <div>
            <table className="tableSectionDashboard">
            <thead className="tableHeadDashboard">
                <tr className="tableHeadDashboard">
                    
                    <th className="dashboardTableHeader">ID and Aadhar card</th>
                    <th className="dashboardTableHeader">Name of Respondent</th>
                    <th className="dashboardTableHeader">Village</th>
                    <th className="dashboardTableHeader">Status</th>
                    <th className="dashboardTableHeader">No. of screening</th>
                    <th className="dashboardTableHeader">Last update</th>
                    <th className="dashboardTableHeader">Action</th>
                </tr>
            </thead>
            <tbody>
                {
                    tableData.map((data, index) => {
                      return  <tr key={index}>
                    <td onClick={() => {
                        setAdharNum(index + 1)
                        toggleUserDetail()
                    }} className="tableItemsDash">{index + 1}</td>
                    <td className="tableItemsDash">{data.idAdhar}</td>
                    <td className="tableItemsDash">{data.nameRes}</td>
                    <td className="tableItemsDash">{data.village}</td>
                    <td className="tableItemsDash">{data.status}</td>
                    <td className="tableItemsDash">{data.numOfSC}</td>
                    <td className="tableItemsDash">{data.lastUpdate}</td>
                </tr>
                    })
                
                }
            </tbody>
        </table>
            </div>
            <div>
                <p>Filter</p>
                <form>
                    <label>Block
                    <select>
                    <option value="Filter">Select block</option>
                    <option value="volvo">January</option>
                    <option value="saab">February</option>
                    </select>
                    </label>
                    <label>Village
                    <select>
                    <option value="Filter">Select block</option>
                    <option value="volvo">January</option>
                    <option value="saab">February</option>
                    </select>
                    </label>
                    <label>Status
                    <select>
                    <option value="Filter">Select block</option>
                    <option value="volvo">January</option>
                    <option value="saab">February</option>
                    </select>
                    </label>
                    <label>Blood transfusion Report
                    <select>
                    <option value="Filter">Select block</option>
                    <option value="volvo">January</option>
                    <option value="saab">February</option>
                    </select>
                    </label>
                    <input type="radio" id="html" name="fav_language" value="HTML" />
                        <label htmlfor="html">ALL</label>
                        <input type="radio" id="css" name="fav_language" value="CSS" />
                        <label htmlfor="css">Pregnant Women</label>
                        <input type="radio" id="javascript" name="fav_language" value="JavaScript" />
                        <label htmlfor="javascript">Adl. Girls (School going)</label>
                        <label>
                            Date Range
                            <input type="date" />
                            <input type="date" />
                        </label>
                        <input type="submit" />
                </form>
            </div>
        </section>
        }</>
    )
}
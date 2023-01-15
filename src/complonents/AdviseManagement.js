import { useEffect, useState } from "react"
import searchImage from "../images/Combined-Shape.png"
import AdviseDetailForm from "./AdviseDetailForm"
import CreateNewAdvise from "./CreateNewAdvise"
export default function AdviseManagement({userId}) {
    const [search, setSearch] = useState("")
    const [adviseForm, setAdviseForm] = useState(false)
    const [tableData, setTableData] = useState([{
        RespondentName: "shdhb",
        Description: "sdgshd",
        Action: "sdhsjnfd",
        
    },{
        RespondentName: "shdhb",
        Description: "sdgshd",
        Action: "sdhsjnfd",
    }, {
        RespondentName: "shdhb",
        Description: "sdgshd",
        Action: "sdhsjnfd",
    }])
    function toggleAdviseForm(){
        setAdviseForm(prev => {
            return !prev
        })
    }
    function handleSubmit(){

    }
    async function deleteAdvise(respondentName){
        const response = await fetch("deleteAdvise", {
            method: 'DELETE',
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                respondentName : respondentName,
                userId: userId
            }),
        })
        
    }
    async function fetchAdviseData(){
        const response = await fetch(`getAdviseManagementDetails?userId=${userId}`, {
            method: 'GET'
        })
        console.log(userId);
    }
    useEffect(() => {
        fetchAdviseData()
    }, [])
    return (
        <>
        {
            adviseForm ? <CreateNewAdvise toggleAdviseForm={toggleAdviseForm} userId={userId} /> :
        <section>
            <div>
                <h1>Advise Management</h1>
                
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
            <button onClick={() => toggleAdviseForm()}>Add User</button>
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
                    <td className="tableItemsDash">{data.RespondentName}</td>
                    <td className="tableItemsDash">{data.Description}</td>
                    <td onClick={() => {deleteAdvise(data.RespondentName)}} className="tableItemsDash">{data.Action}</td>
                   
                    
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
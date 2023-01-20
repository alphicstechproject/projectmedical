import { useEffect, useState } from "react"
import greenArrow from "../images/GreenArrow.png"
import { Doughnut } from 'react-chartjs-2';
import {Chart, ArcElement} from 'chart.js'
import { useLocation, useNavigate } from "react-router-dom"
import Footer from "./Footer";
import { apiUrl } from "../url";
Chart.register(ArcElement);

export default function DashBoard({userId, currentUserRole, updateUserRole, employeeid}){
    const location = useLocation()
    const navigate = useNavigate()
    const [currentDate, setCurrentDate] = useState(new Date())
    const months = ["Jan","Feb","March","April","May","June","July","Aug","Sep","Oct","Nov","Dec"];
    const [numOfScreening, setNumOfScreening] = useState(0)
    const [percentageIncreaseScreening, setPercentageIncreaseScreening] = useState(0)
    const [percentage, setPercentage] = useState(0)
    const [percentageIncrease, setPercentageIncrease] = useState(0)
    const [sevenScreenings, setSevenScreenings] = useState([])
    const [screeningReports14, setScreeningReports14] = useState([50, 25, 30, 46, 24, 56, 67, 32, 26, 45, 24, 12, 65, 76])
    const [screeningReports30, setScreeningReports30] = useState([50, 25, 30, 46, 24, 56, 67, 32, 26, 46, 23, 56, 67, 54, 50, 25, 30, 46, 24, 56, 67, 32, 26, 46, 23, 56, 67, 54, 34, 20])
    const [screeningReports1, setScreeningReports1] = useState([50, 25, 30, 46, 24, 56, 67, 32, 26, 46, 23, 56])
    const [selectedValue, setSelectedValue] = useState("option1");

    const handleRadioChange = event => {
        setSelectedValue(event.target.value);
    };
    
    const [tableData, setTableData] = useState([])
    
    const [data, setData] = useState({
        labels: ['Option 1', 'Option 2', 'Option 3'],
        datasets: [{
            data: [50, 25, 25],
            backgroundColor: ['#39B44A', '#FB8256', '#FF1D1D'],
            hoverBackgroundColor: ['#FF5A5E', '#5AD3D1', '#FFC870']
        }]
    });

    async function getDashboardData(){
        const response = await fetch(`${apiUrl}dashboard`, {
            headers: {
                "authorization" : localStorage.getItem(employeeid)
            }
        })
        const resJson = await response.json()
        setData({
            labels: ['Option 1', 'Option 2', 'Option 3', 'Option 4'],
            datasets: [{
                data: [resJson.data.anemia, resJson.data.noAnemia, resJson.data.severeAnemia, resJson.data.moderateAnemia],
                backgroundColor: ['#39B44A', '#FB8256', '#FF1D1D', '#356FA2'],
                hoverBackgroundColor: ['#FF5A5E', '#5AD3D1', '#FFC870', '#AF3241']
            }]
        })
        setTableData(resJson.data.recentScreening)
        setNumOfScreening(resJson.data.totalScreening)
        setPercentageIncreaseScreening(resJson.percentageIncreaseScreening)
        setPercentage(resJson.data.anemiaRate)
        setPercentageIncrease(resJson.percentageIncrease)
        setSevenScreenings(resJson.sevenScreenings)
        updateUserRole("Admin")

    }

    useEffect(() => {
        if(!localStorage.getItem(employeeid)){
            navigate("/", {replace: true})
        }
        getDashboardData()
    }, [])
    return (
        <section className="dashboard section">
            <div className="screeningNumber">
                <div className="screeningNumberInner">
                <p>Total Screening</p>
                <p className="screeningNumberMargin">{`${currentDate.getDate()} ${months[currentDate.getMonth()]}`}</p>
                </div>
                <div className="screeningNumberInner">
                <p>{numOfScreening} Screening</p>
                <div className="screeningNumberMargin">
                    <img src = {greenArrow} />
                    <p>+{percentageIncrease}%</p>
                    </div>
                </div>
            </div>
            <div className="screeningNumber2">
                <div className="screeningNumberInner">
            <p>Anemia Rate</p>
                <p className="screeningNumberMargin">{`${currentDate.getDate()} ${months[currentDate.getMonth()]}`}</p>
                </div>
                <div className="screeningNumberInner">
                <p >{percentage} %</p>
                <div className="screeningNumberMargin2">
                    <img src = {greenArrow} />
                    <p>+{percentageIncrease}%</p>
                </div>
                </div>
            </div>
            <div className="screeningReportSection">
                <div className="screeningReportSectionInner1">
                <p className="screeningReportSectionInner1Margin">Screening Report</p>
                <div className="radioSection">
                <input
                type="radio" value="option1" checked={selectedValue === "option1"} onChange=        {handleRadioChange} />
            Last 14 days
            <input type="radio" value="option2" checked={selectedValue === "option2"} onChange=     {handleRadioChange}
            />
            Last month
            <input type="radio" value="option3" checked={selectedValue === "option3"} onChange=     {handleRadioChange}
            />
            Last Year
            </div>
                </div>
                <div className="screeningReports">
                {
                    selectedValue === "option1" && screeningReports14.map((screeningReport, index) => {
                        return <div key={index} className="maxh" style={{ height: `${screeningReport}px`, width: '10px', backgroundColor: 'blue', margin: '0 5px' }} />
                    })
                }
                {
                    selectedValue === "option2" && screeningReports30.map((screeningReport, index) => {
                        return <div key={index} className="maxh" style={{ height: `${screeningReport}px`, width: '10px', backgroundColor: 'blue', margin: '0' }} />
                    })
                }
                {
                    selectedValue === "option3" && screeningReports1.map((screeningReport, index) => {
                        return <div key={index} className="maxh" style={{ height: `${screeningReport % 100}px`, width: '10px', backgroundColor: 'blue', margin: '0' }} />
                    })
                }
                </div>
            </div>
            <div>
            <h3 className="recent">Recent Screening</h3>
            <table className="tableSectionDashboard">
            <thead className="tableHeadDashboard">
                <tr className="tableHeadDashboard">
                    <th className="dashboardTableHeader">Screening Id</th>
                    <th className="dashboardTableHeader">Name od Respondent</th>
                    <th className="dashboardTableHeader">Village</th>
                    <th className="dashboardTableHeader">Status</th>
                    <th className="dashboardTableHeader">No. of screening</th>
                    <th className="dashboardTableHeader">Last Update</th>
                </tr>
            </thead>
            <tbody>
                {
                    tableData.map((data, index) => {
                      return  <tr key={index}>
                    <td className="tableItemsDash">{data._id}</td>
                    <td className="tableItemsDash">{data.respondent_name}</td>
                    <td className="tableItemsDash">{data.village}</td>
                    <td className={data.status_question_two === "no animia" ? "tableItemsDash anemiaStatusGreen" : "tableItemsDash anemiaStatusRed"}>{data.status_question_two}</td>
                    <td className="tableItemsDash">{data.screening_no}</td>
                    <td className="tableItemsDash">{data.updatedAt.slice(0, 10)}</td>
                </tr>
                    })
                
                }
            </tbody>
        </table>
            </div>
            <div className="pieChartSection">
            <div className="screeningNumber screeningNumber3">
                <div className="screeningNumberInner">
                <p>Total Screening</p>
                <p className="screeningNumberMargin">{`${currentDate.getDate()} ${months[currentDate.getMonth()]}`}</p>
                </div>
                <div className="screeningNumberInner">
                <p>{numOfScreening} Screening</p>
                <div className="screeningNumberMargin">
                    <img src = {greenArrow} />
                    <p>+{percentageIncrease}%</p>
                    </div>
                </div>
            </div>
            <div className="doughnutContainer">
            <Doughnut data={data} />
            <div className="colorSection">
                <div>
                <div className="anaemiaColorG"></div>
                <p>No Anaemia</p>
                </div>
                <div>
                <div className="anaemiaColorO"></div>
                <p>Anaemia</p>
                </div>
                <div>
                <div className="anaemiaColorR"></div>
                <p>Severe Anaemia</p>
                </div>
            </div>
            </div>
            
        </div>
        <Footer />
        </section>
    )
}
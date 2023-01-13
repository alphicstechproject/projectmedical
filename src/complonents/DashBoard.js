import { useState } from "react"
import greenArrow from "../images/GreenArrow.png"
import { Doughnut } from 'react-chartjs-2';
import {Chart, ArcElement} from 'chart.js'
Chart.register(ArcElement);

export default function DashBoard(){
    const [currentDate, setCurrentDate] = useState(new Date())
    const months = ["Jan","Feb","March","April","May","June","July","Aug","Sep","Oct","Nov","Dec"];
    const [numOfScreening, setNumOfScreening] = useState(0)
    const [percentageIncrease, setPercentageIncrease] = useState(0)
    const [percentage, setPercentage] = useState(0)
    const [screeningReports, setScreeningReports] = useState([50, 25, 30, 46, 24, 56, 67, 32, 26, 46, 23, 56, 67, 54])
    
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
    
    const [data, setData] = useState({
        labels: ['Option 1', 'Option 2', 'Option 3'],
        datasets: [{
            data: [50, 25, 25],
            backgroundColor: ['#F7464A', '#46BFBD', '#FDB45C'],
            hoverBackgroundColor: ['#FF5A5E', '#5AD3D1', '#FFC870']
        }]
    });
    return (
        <section className="dashboard">
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
                <label><input type="radio" />14 days</label>
                <label><input type="radio" />Last Month</label>
                <label><input type="radio" />Last Year</label>
                </div>
                <div className="screeningReports">
                {
                    screeningReports.map((screeningReport, index) => {
                        return <div style={{ height: `${screeningReport}px`, width: '10px', backgroundColor: 'blue', margin: '0 5px' }} />
                    })
                }
                </div>
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
                </tr>
            </thead>
            <tbody>
                {
                    tableData.map((data, index) => {
                      return  <tr key={index}>
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
            <div className="piechartSection">
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
            <Doughnut data={data} />
        </div>
            <div>
        </div>
        </section>
    )
}
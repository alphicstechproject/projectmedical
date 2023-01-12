import { useState } from "react"
import greenArrow from "../images/GreenArrow.png"

export default function DashBoard(){
    const [currentDate, setCurrentDate] = useState(new Date())
    const months = ["Jan","Feb","March","April","May","June","July","Aug","Sep","Oct","Nov","Dec"];
    const [numOfScreening, setNumOfScreening] = useState(0)
    const [percentageIncrease, setPercentageIncrease] = useState(0)
    const [percentage, setPercentage] = useState(0)
    return (
        <section className="dashboard">
            <div>
                <p>Total Screening</p>
                <p>{`${currentDate.getDate()} ${months[currentDate.getMonth()]}`}</p>
                <p>{numOfScreening} Screening</p>
                <div>
                    <img src = {greenArrow} />
                    <p>{percentageIncrease}</p>
                </div>
            </div>
            <div>
            <p>Anemia Rate</p>
                <p>{`${currentDate.getDate()} ${months[currentDate.getMonth()]}`}</p>
                <p>{percentage} %</p>
                <div>
                    <img src = {greenArrow} />
                    <p>{percentageIncrease}</p>
                </div>
            </div>
            <div></div>
            <div></div>
            <div></div>
        </section>
    )
}
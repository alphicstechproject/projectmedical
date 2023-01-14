import { useState } from "react"
import primaryFill from "../images/Primary fill.png"
export default function CreateNewAdvise({toggleAdviseForm}){
    const [resName, setResName] = useState("")
    const [advisedCount, setAdvisedCount] = useState([1])
    const [adviseDetails, setAdviseDetails] = useState([{
        anemiaStage: "",
        description: ""
    }])
    const [anemiaArray, setAnemiaArray] = useState([""])
    const [descriptionArray, setDescriptionArray] = useState([""])

    function increment(){
        setAdvisedCount((prev) => {
            return [...prev, 1]
        })
       
        setAnemiaArray((prev) => {
            prev.push("")
            return prev
        })
        setDescriptionArray((prev) => {
            prev.push("")
            return prev
        }) 
    }
    function handleDescription(index, des){
        setAdviseDetails((prev) => {
            prev[index].description = des
            return prev
        })
    }
    return (
        <section>
            <div>
                <img onClick={() => toggleAdviseForm()} src={primaryFill} />
                <h1>Create New Advised Report</h1>
                <button>Save</button>
            </div>
            <form>
            <label>Respondent name<input value={resName} onChange={(e) => setResName(e.target.value)} type="text" placeholder="Enter User Full Name" required /></label>
            <h1>Advised Details</h1>
            {
                advisedCount.map((advise, index) => {
                    return (
                        <div key={index}>
                            <label>Anemia stage<input  /></label>

                            <label>Description<textarea></textarea></label>
                        </div>
                    )
                })
            }

            </form>
            <button onClick={increment}>Add field</button>
        </section>
    )
}
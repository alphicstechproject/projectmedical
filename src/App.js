import Login from "./complonents/Login";
import ResetPassword from "./complonents/ResetPassword";
import Header from "./complonents/Header";
import DashBoard from "./complonents/DashBoard";
import UserManagement from "./complonents/UserManagement";
import CreateUser from "./complonents/CreateUser";
import AdviseManagement from "./complonents/AdviseManagement";
import CreateNewAdvise from "./complonents/CreateNewAdvise";
import ScreeningManagement from "./complonents/ScreeningManagement";
import UserDetails from "./complonents/UserDetails";
import {
  Routes,
  Route,
} from "react-router-dom";

function App() {
  return (<>

        <Routes>
            <Route path = "/" element = { <Login />} />
            <Route path = "/DashBoard" element = {<Header />} />
        </Routes>
  </>)
    
          
}

export default App;

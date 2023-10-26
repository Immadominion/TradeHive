import {createBrowserRouter, createRoutesFromElements, Route, RouterProvider} from 'react-router-dom'
import Root from './Routes/Root'
import BodyLoggedIn from "./Pages/BodyLoggedIn.jsx";
import Messages from './Pages/Messages.jsx'
import Wishlist from './Pages/Wishlist.jsx'
import Profile from './Pages/Profile.jsx'
import {useState} from "react";

const App = function () {
    const [pathName, setPathName] = useState(window.location.pathname)


    const router = createBrowserRouter(

        createRoutesFromElements(
            <Route path='/' element={<Root activePage={pathName} setActivePage={setPathName}/>}>
                <Route index element={<BodyLoggedIn/>}/>
                <Route path={`/profile`} element={<Profile/>}/>
                <Route path={`/messages`} element={<Messages/>}/>
                <Route path={`/wishlist`} element={<Wishlist/>}/>
            </Route>
        )
    )

    return (
        <div className="App">
            <RouterProvider router={router}/>
        </div>
    )
}

export default App;
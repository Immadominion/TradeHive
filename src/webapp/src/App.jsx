// import {Suspense, lazy} from "react";
import {createBrowserRouter, createRoutesFromElements,Route,RouterProvider} from 'react-router-dom'
import Root from './Routes/Root'
import BodyLoggedIn from "./Pages/BodyLoggedIn.jsx";

const App = function () {
const router = createBrowserRouter(
    createRoutesFromElements(
        <Route path='/' element={<Root />}>
            <Route index element={<BodyLoggedIn />}/>
        </Route>
    )
)

    return(
        <div className="App">
            <RouterProvider router={router}/>
        </div>
    )
}

export default App;
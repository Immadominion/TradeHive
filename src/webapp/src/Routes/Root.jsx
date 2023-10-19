import {Outlet} from 'react-router-dom'
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome'
import {faHeart, faHouse, faMessage, faPlus, faUser} from "@fortawesome/free-solid-svg-icons";

const Root = function () {
    return(<>
        <Outlet/>
        <nav className={'nav'}>
        <div className="nav__icon market">
            <FontAwesomeIcon icon={faHouse}/>
            <span>Market</span>
        </div>
        <div className="nav__icon message">
            <FontAwesomeIcon icon={faMessage}/>
            <span>Message</span>
        </div>
        <div className="nav__icon sell">
            <FontAwesomeIcon icon={faPlus}/>
            <span>Sell</span>
        </div>
        <div className="nav__icon wishlist">
            <FontAwesomeIcon icon={faHeart}/>
            <span>Wishlists</span>
        </div>
        <div className="nav__icon profile">
            <FontAwesomeIcon icon={faUser}/>
            <span>Profile</span>
        </div>
    </nav>
    </>)
}

export default Root;
import Avatar from "/public/images/avatar1.svg";
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome'
import {faBell, faSearch} from "@fortawesome/free-solid-svg-icons";
import sliders from "/public/images/sliders.svg"
import Product from '../Components/Product.jsx'
import productsData  from "../productsData.js";

const product = productsData.map((data)=><Product key={data.id} data={data}/>)

const BodyLoggedIn = function () {
    return <>
        <div className="bodyLoggedIn">
            <section className="profile">
                <img src={Avatar} alt="" className='profile__avatar'/>
                <div className="profile__notifications">
                    <FontAwesomeIcon icon={faBell} size={'2xl'}/>
                </div>
            </section>
            <section className="search">
                <section className="search__box">
                    <button>
                        <FontAwesomeIcon icon={faSearch} />
                    </button>
                    <input type="text" name="search" id="search" placeholder={'Search Listings'}/>
                </section>
                <div className="search__filter">
                    <img src={sliders} alt="Slider"/>
                </div>
            </section>
            <section className="category">
                <div className="category__heading">
                    <h3>Category</h3>
                    <button>See all</button>
                </div>
                <div className="category__categories">
                    <button className="tags active">All</button>
                    <button className="tags">Textbook</button>
                    <button className="tags">Services</button>
                    <button className="tags">Services</button>
                    <button className="tags">Services</button>
                </div>
            </section>
            <section className="products">
                {product}
            </section>
        </div>
    </>
}

export default BodyLoggedIn;
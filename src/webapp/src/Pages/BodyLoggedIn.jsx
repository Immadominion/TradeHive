import Avatar from "/public/images/avatar1.svg";
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome'
import {faSearch} from "@fortawesome/free-solid-svg-icons";
import sliders from "/public/images/sliders.svg"
import Product from '../Components/Product.jsx'
import productsData from "../productsData.js";

const product = productsData.map((data) => <Product key={data.id} data={data}/>)

const BodyLoggedIn = function () {
    return <>
        <div className="bodyLoggedIn">
            <section className="profile">
                <img src={Avatar} alt="" className='profile__avatar'/>
                <div className="profile__notifications">
                    <svg width="157" height="174" viewBox="0 0 157 174" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path
                            d="M93.3972 164.179C91.8833 166.782 89.7103 168.943 87.0958 170.445C84.4814 171.947 81.5172 172.737 78.5 172.737C75.4828 172.737 72.5186 171.947 69.9042 170.445C67.2897 168.943 65.1167 166.782 63.6028 164.179M130.167 52.5303C130.167 38.8636 124.723 25.7567 115.034 16.0929C105.344 6.42907 92.2029 1 78.5 1C64.7971 1 51.6555 6.42907 41.9662 16.0929C32.2768 25.7567 26.8333 38.8636 26.8333 52.5303C26.8333 112.649 1 129.826 1 129.826H156C156 129.826 130.167 112.649 130.167 52.5303Z"
                            stroke="#464646" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round"/>
                    </svg>
                </div>
            </section>
            <section className="search">
                <section className="search__box">
                    <button>
                        <FontAwesomeIcon icon={faSearch}/>
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
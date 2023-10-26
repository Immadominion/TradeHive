import SettingsIcon from "/public/images/icons/Settings icon.svg";
import Avatar1 from '/public/images/avatar1.png';
import listingsData from '../listingsData.js'
import Product from "../Components/Product.jsx";
import {useState} from "react";

const listingContainer = document.getElementById('listingContainer')

const Profile = function () {
    const [isShowingMore, setIsShowingMore] = useState(true)
    let following, followers;
    following = 5;
    followers = 60;

    let listingsDatas = listingsData.map(data => {
        return <Product key={data.id} data={data}/>
    })

    const handleShowMore = function (e) {
        setIsShowingMore(!isShowingMore)
    }
    return (
        <>
            <div className="user--Profile">
                {/*The Settings Icon*/}
                <div className="settingsIcon">
                    <img src={SettingsIcon} alt="Settings Icon" className={'settingsIcon__image'}/>
                </div>
                {/*The Profile Image and Details*/}
                <div className="profile__image">
                    <img src={Avatar1} alt="Avatar Image"/>
                    <div className="editIcon">
                        <svg className={'PenIcon'} xmlns="http://www.w3.org/2000/svg" viewBox="0 0 79 98.75"
                             version="1.1"
                             x="0px" y="0px">
                            <g stroke="none" strokeWidth="1" fill="none" fillRule="evenodd">
                                <path
                                    d="M67.2700156,2.31030571 L75.5695108,10.1215953 C78.9196182,13.2746375 79.1431781,18.5041058 76.1225987,21.9294664 L75.8882114,22.1847289 L26.5877537,72.4164686 L2.84217094e-14,78.4591399 L6.03986291,51.8837431 L55.434008,2.48959801 C58.6825797,-0.758973661 63.924538,-0.838379048 67.2700156,2.31030571 Z M10.1308672,56.4506224 L6.63559657,71.8235434 L22.1897687,68.2870921 C21.0540319,64.6407619 19.8098914,62.1689687 18.5500313,60.9091086 C17.2322883,59.5913656 14.4015826,58.069727 10.1308672,56.4506224 Z M50.818,14.177 L12.8534263,52.1413976 C17.2403347,53.8710731 20.2972115,55.585221 22.0855652,57.3735747 C23.7933047,59.0813141 25.2409707,61.7382687 26.4962219,65.3717374 L63.901,27.26 L50.818,14.177 Z M58.9695419,6.02513191 L54.353,10.641 L67.403,23.691 L72.2418052,18.7629323 L72.4292306,18.5562441 C73.6109142,17.1453805 73.5000237,15.0400884 72.1426873,13.7625953 L63.8431921,5.95130567 C62.4656425,4.65478842 60.3071891,4.68748476 58.9695419,6.02513191 Z"
                                    fill="#000000" fillRule="nonzero"/>
                            </g>
                        </svg>
                    </div>
                </div>

                <div className="profile__details">
                    <h1>Ayomide Shuaib</h1>
                    <h2>Obafemi Awolowo University</h2>
                    <span className="following">
                    {`${followers} Follower${followers > 1 ? 's' : ''} | ${following} Following`}
                </span>
                </div>

                <div className="activeListings">
                    <h2 className="activeListings__title" style={{paddingInline: ' 19px'}}>Active Listings</h2>
                    <div className={`activeListings__listing ${isShowingMore ? 'showmore' : 'showless'}`}>
                        {listingsDatas}
                    </div>
                    <button className="activeListings__showMore" onClick={handleShowMore}>
                        See {isShowingMore ? 'all (32)' : 'less'}
                    </button>
                </div>

                <div className="wishlists">
                    <h4 className="wishlists__title" style={{paddingInline: "19px"}}>Wishlist</h4>
                    <div className="wishlists"></div>
                </div>
                {/*    Badges*/}
                <div className="profile__badges">
                    <div className="badge">Talent</div>
                    <div className="badge">Fast Responder</div>
                    <div className="badge">Selling Ninja</div>
                    <div className="badge">Slowest Responder</div>
                    <span className="leftArrow">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512">
                            <path
                                d="M278.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-160 160c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L210.7 256 73.4 118.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l160 160z"/></svg>
                    </span>
                </div>

            </div>
        </>
    )
}
export default Profile;
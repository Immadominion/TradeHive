import {FontAwesomeIcon} from "@fortawesome/react-fontawesome";
// import {faHeart} from "@fortawesome/free-solid-svg-icons";
import {faHeart} from "@fortawesome/free-regular-svg-icons"

const Product = ({data}) => {

   return (

        <>
            <div className="product">
                <div className="product__favourite">
                    <FontAwesomeIcon icon={faHeart} />
                </div>
                <div className="imgContainer">
                    <img src={`/public/images/${data.img}`} alt={`${data.img}`}/>
                </div>
                <h4>{data.title}</h4>
                <span className={'location'}>{data.location}</span>
                <span className="price">{data.price}</span>
            </div>
        </>
    )
};



export default Product;
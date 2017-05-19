import React from 'react';

export const goodStar = () => {
  return (<img className="star" src="http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495210337/good-star_g0lskg.png"/>);
};

export const decentStar = () => {
  return (<img className="star" src="http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495210337/decent-star_kbdc8i.png"/>);
};

export const badStar = () => {
  return (<img className="star" src="http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495210337/bad-star_daopxh.png"/>);
};

export const blankStar = () => {
  return (<img className="star" src="http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495210337/blank-star_izsa71.png"/>);
};

export const starRating = (rating) => {
  switch(rating) {
    case 5:
      return (<div className="rating-stars">
        {goodStar()}{goodStar()}{goodStar()}{goodStar()}{goodStar()}
      </div>);
    case 4:
      return (<div className="rating-stars">
        {goodStar()}{goodStar()}{goodStar()}{goodStar()}{blankStar()}
      </div>);
    case 3:
      return (<div className="rating-stars">
        {decentStar()}{decentStar()}{decentStar()}{blankStar()}{blankStar()}
      </div>);
    case 2:
      return (<div className="rating-stars">
        {badStar()}{badStar()}{blankStar()}{blankStar()}{blankStar()}
      </div>);
    case 1:
      return (<div className="rating-stars">
        {badStar()}{blankStar()}{blankStar()}{blankStar()}{blankStar()}
      </div>);
    default:
      return (<div className="rating-stars">
        {blankStar()}{blankStar()}{blankStar()}{blankStar()}{blankStar()}
      </div>);
  }
};

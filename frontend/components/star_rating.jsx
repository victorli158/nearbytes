import React from 'react';

const goodStar = () => {
  return (<img src="http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495210337/good-star_g0lskg.png"/>);
};

const decentStar = () => {
  return (<img src="http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495210337/decent-star_kbdc8i.png"/>);
};

const badStar = () => {
  return (<img src="http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495210337/bad-star_daopxh.png"/>);
};

const blankStar = () => {
  return (<img src="http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495210337/blank-star_izsa71.png"/>);
};

export const starRating = (rating) => {
  switch(rating) {
    case 5:
      return (<p>
        {goodStar}{goodStar}{goodStar}{goodStar}{goodStar}
      </p>);
    case 4:
      return (<p>
        {goodStar}{goodStar}{goodStar}{goodStar}{blankStar}
      </p>);
    case 3:
      return (<p>
        {decentStar}{decentStar}{decentStar}{blankStar}{blankStar}
      </p>);
    case 2:
      return (<p>
        {badStar}{badStar}{blankStar}{blankStar}{blankStar}
      </p>);
    case 1:
      return (<p>
        {badStar}{blankStar}{blankStar}{blankStar}{blankStar}
      </p>);
    default:
      return (<p>
        {blankStar}{blankStar}{blankStar}{blankStar}{blankStar}
      </p>);
  }
};

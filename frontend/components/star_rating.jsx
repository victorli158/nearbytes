import React from 'react';

const goodStar = () => {
  return (<img src="http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495210337/goodStar_g0lskg.png"/>);
};

const decentStar = () => {
  return (<img src="http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495210337/decentStar_kbdc8i.png"/>);
};

const badStar = () => {
  return (<img src="http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495210337/badStar_daopxh.png"/>);
};

const blankStar = () => {
  return (<img src="http://res.cloudinary.com/nearbytes/image/upload/q_100/v1495210337/blankStar_izsa71.png"/>);
};

export const starRating = (rating) => {
  switch(rating) {
    case 5:
      return (<div>
        {goodStar}{goodStar}{goodStar}{goodStar}{goodStar}
      </div>);
    case 4:
      return (<div>
        {goodStar}{goodStar}{goodStar}{goodStar}{blankStar}
      </div>);
    case 3:
      return (<div>
        {decentStar}{decentStar}{decentStar}{blankStar}{blankStar}
      </div>);
    case 2:
      return (<div>
        {badStar}{badStar}{blankStar}{blankStar}{blankStar}
      </div>);
    case 1:
      return (<div>
        {badStar}{blankStar}{blankStar}{blankStar}{blankStar}
      </div>);
    default:
      return (<div>
        {blankStar}{blankStar}{blankStar}{blankStar}{blankStar}
      </div>);
  }
};

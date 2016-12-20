


function downToZero(num) {
  if (num === 0) {
    console.log(num);
  } else {
    console.log(num);
    downToZero(num - 1)
  }
};

downToZero(10);



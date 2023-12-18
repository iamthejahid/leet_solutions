// ** ACCEPTED ** //

// Accepted
// Editorial
// Solution
// Runtime
// Details
// 71ms
// Beats 20.60%of users with JavaScript
// Memory
// Details
// 43.39MB
// Beats 98.17%of users with JavaScript

 digitMaker = function(n) {
  let digits = 0;
  let x = n;
  while (x != 0) {
    var reminder = x % 10;
    if (reminder != 0) {
      digits += reminder;
    }
    x = Math.floor(x / 10);
  }
  return digits;
}

var differenceOfSum = function(nums) {
  let sumnum = 0;
  let digitSum = 0;
  for (var i = 0; i < nums.length; i++) {
    sumnum += nums[i];
    digitSum += digitMaker(nums[i]);
  }

  return Math.abs(sumnum - digitSum);
}

console.log(differenceOfSum([1,15,6,3]));



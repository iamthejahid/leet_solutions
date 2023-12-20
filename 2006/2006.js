// Accepted
// Editorial
// Solution
// Runtime
// Details
// 68ms
// Beats 9.84%of users with JavaScript
// Memory
// Details
// 42.45MB
// Beats 53.72%of users with JavaScript

var absolute = function(n) {
   return n < 0 ? -n : n
}

var countKDifference = function(nums, k) {
  var flag = 0;
  for (var i = 0; i < nums.length - 1; i++) {
    for (var j = i + 1; j < nums.length; j++) {
      if (absolute(nums[i] - nums[j]) == k) {
        flag++;
      }
    }
  }
  return flag;
}

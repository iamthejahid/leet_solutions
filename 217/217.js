
// Runtime
// 86
// ms
// Beats
// 43.04%
// of users with JavaScript
// Memory
// 62.08
// MB
// Beats
// 35.63%
// of users with JavaScript

var containsDuplicate = function(nums) {
    let map = {};
    for(let i = 0; i < nums.length; i++) {
        if(nums[i].toString() in map) {
            return true;
        }
        map[nums[i].toString()] = nums[i];
    }
    return false;
};

console.log(containsDuplicate([1,2,3,4,0,0])); // true
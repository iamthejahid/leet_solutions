
// Runtime
// 90
// ms
// Beats
// 37.04%
// of users with TypeScript
// Memory
// 62.75
// MB
// Beats
// 27.97%
// of users with TypeScript

function checkDuplicate(nums: number[]): boolean {
    let map = {};
    for(let i = 0; i < nums.length; i++) {
        if(nums[i].toString() in map) {
            return true;
        }
        map[nums[i].toString()] = nums[i];
    }
    return false;
};

console.log(checkDuplicate([1,2,3,4,0,0])); // true

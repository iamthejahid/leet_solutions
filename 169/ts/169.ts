// Runtime
// 53
// ms
// Beats
// 95.41%
// of users with TypeScript
// Memory
// 54.00
// MB
// Beats
// 48.99%
// of users with TypeScript


function majorityElement(nums: number[]): number {
    let candidate: number = 0;
    let count: number = 0;
    for (let num of nums) {
        if (count == 0) {
            candidate = num;
        }
        count += (candidate == num) ? 1 : -1;
    }
    return candidate;
}
// Runtime
// 83
// ms
// Beats
// 39.06 %
//     of users with TypeScript
// Memory
// 59.70
// MB
// Beats
// 54.40 %
//     of users with TypeScript

function maxProfit_sol(prices: number[]): number {
    var maxProfit = 0;
    var minPrice = prices[0];
    for (let i = 1; i < prices.length; i++) {
        minPrice = Math.min(minPrice, prices[i]);
        maxProfit = Math.max(maxProfit, prices[i] - minPrice);
    }
    return maxProfit;
};
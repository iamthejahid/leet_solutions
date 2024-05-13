// Runtime
// 62
// ms
// Beats
// 95.21 %
//     of users with JavaScript
// Memory
// 58.75
// MB
// Beats
// 77.77 %
//     of users with JavaScript


/**
 * @param {number[]} prices
 * @return {number}
 */
var maxProfit = function (prices) {
    var maxProfit = 0;
    var minPrice = prices[0];
    for (var i = 1; i < prices.length; i++) {
        maxProfit = prices[i] - minPrice > maxProfit ? prices[i] - minPrice : maxProfit;
        minPrice = prices[i] < minPrice ? prices[i] : minPrice;
    }
    return maxProfit;
};
// Runtime
// 416
// ms
// Beats
// 34.17%
// of users with Dart
// Memory
// 192.17
// MB
// Beats
// 26.67%
// of users with Dart

class Solution {
  int maxProfit(List<int> prices) {
    if (prices.isEmpty) return 0;

    int maxProfit = 0;
    int minPrice = prices[0];

    for (int i = 1; i < prices.length; i++) {
      maxProfit =
          prices[i] - minPrice > maxProfit ? prices[i] - minPrice : maxProfit;
      minPrice = prices[i] < minPrice ? prices[i] : minPrice;
    }
    return maxProfit;
  }
}

main() {
  Solution sol = new Solution();
  print(sol.maxProfit([7, 1, 5, 3, 6, 4]));
  print(sol.maxProfit([7, 6, 4, 3, 1]));
  // wild test case
  print(sol.maxProfit([1, 10000, 1, 10000, 1, 10000, 1, 10000, 1, 10000]));
}

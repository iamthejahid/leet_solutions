// Runtime
// 333
// ms
// Beats
// 94.44%
// of users with Dart
// Memory
// 153.04
// MB
// Beats
// 67.04%
// of users with Dart

class Solution {
  int majorityElement(List<int> nums) {
    int count = 0;
    int candidate = 0;
    // int iterator = 0;
    for (int num in nums) {
      if (count == 0) {
        candidate = num;
      }
      count += (candidate == num) ? 1 : -1;
      //   print("[${iterator}] candidate: ${candidate}, count: ${count}");
      //   iterator++;
    }
    return candidate;
  }
}

void main() {
  print(Solution().majorityElement([2, 2, 1, 1, 1, 2, 2]));
  print(Solution().majorityElement([1, 2, 3, 4, 5]));
}

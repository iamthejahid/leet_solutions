// Runtime
// Details
// 254ms
// Beats 62.50%of users with Dart
// Memory
// Details
// 143.26MB
// Beats 25.00%of users with Dart

// int arithmeticTriplets(List<int> nums, int diff) {
//   int flag = 0;
//   for (int i = 0; i < nums.length; i++) {
//     if (nums[i] < diff) {
//       continue;
//     } else {
//       if (nums.contains(nums[i] + diff) && nums.contains(nums[i] - diff)) {
//         flag++;
//       }
//     }
//   }
//   return flag;
// }

// Runtime
// 237 ms
// Beats
// 75%
// Memory
// 143.1 MB
// Beats
// 25%

int arithmeticTriplets(List<int> nums, int diff) {
  int count = 0;
  Set<int> numSet = Set<int>.from(nums);

  for (int i = 0; i < nums.length; i++) {
    if (numSet.contains(nums[i] + diff) &&
        numSet.contains(nums[i] + 2 * diff)) {
      count++;
    }
  }

  return count;
}

main() {
  print(arithmeticTriplets([4, 5, 6, 7, 8, 9], 2));
}

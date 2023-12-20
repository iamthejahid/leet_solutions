// Runtime
// Details
// 300ms
// Beats 11.11%of users with Dart
// Memory
// Details
// 152.03MB
// Beats 11.11%of users with Dart

int absoulute(int n) => n < 0 ? -n : n;

int countKDifference(List<int> nums, int k) {
  int flag = 0;
  for (int i = 0; i < nums.length - 1; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (absoulute(nums[i] - nums[j]) == k) {
        flag++;
      }
    }
  }
  return flag;
}

// Accepted
// Editorial
// Solution
// Runtime
// Details
// 245ms
// Beats 44.44%of users with Dart
// Memory
// Details
// 147.88MB
// Beats 11.11%of users with Dart

// int countKDifference(List<int> nums, int k) {
//   nums.sort(); // Sort the array in ascending order
//   int count = 0;

//   for (int i = 0; i < nums.length - 1; i++) {
//     for (int j = i + 1; j < nums.length; j++) {
//       if (nums[j] - nums[i] == k) {
//         count++;
//       }
//     }
//   }

//   return count;
// }

main() {
  print(countKDifference([1, 2, 2, 1], 1));
}

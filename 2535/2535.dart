// ** ACCEPTED ** //

// Runtime
// Details
// 202ms
// Beats 100.00%of users with Dart
// Memory
// Details
// 144.47MB
// Beats 95.00%of users with Dart

int digitMaker(int n) {
  int digits = 0;
  int x = n;
  while (x != 0) {
    int reminder = x % 10;
    if (reminder != 0) {
      digits += reminder;
    }
    x = x ~/ 10;
  }
  return digits;
}

int differenceOfSum(List<int> nums) {
  int sumnum = 0;
  int digitSum = 0;
  for (int i = 0; i < nums.length; i++) {
    sumnum += nums[i];
    digitSum += digitMaker(nums[i]);
  }

  return (sumnum - digitSum).abs();
}

main() {
  print(differenceOfSum([1, 2, 3, 4]));
}

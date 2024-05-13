class Solution {
  bool containsDuplicate(List<int> nums) {
    bool flag = false;
    nums.sort();
    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i] == nums[i + 1]) {
        flag = true;
        break;
      }
    }
    return flag;
  }
}

//** ACCEPTED **// 

// Runtime
// Details
// 6ms
// Beats 95.31%of users with C++
// Memory
// Details
// 15.99MB
// Beats 75.25%of users with C++



#include <iostream>
#include <vector>

using namespace std;


int digitMaker(int n) {
  int digits = 0;
  int x = n;
  while (x != 0) {
    int reminder = x % 10;
    if (reminder != 0) {
      digits += reminder;
    }
    x = x / 10;
  }
  return digits;
}

int absouluteMaker(int n) {
   return n < 0 ? -n : n;
}

int differenceOfSum(vector<int>& nums) {
    int sumnum = 0;
    int digitSum = 0;
    for (int i = 0; i < nums.size(); i++) {
        sumnum += nums[i];
        digitSum += digitMaker(nums[i]);
    }

  return absouluteMaker(sumnum - digitSum);
}

int main() {

    vector<int> nums = {1,15,6,3};

    cout << differenceOfSum(nums) << endl;

    return 0;
}
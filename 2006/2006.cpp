#include <iostream>
#include <vector>

using namespace std;


int absoulute(int n){
   return n < 0 ? -n : n;
} 

int countKDifference(vector<int>& nums, int k) {
  int flag = 0;
  for (int i = 0; i < nums.size() - 1; i++) {
    for (int j = i + 1; j < nums.size(); j++) {
      if (absoulute(nums[i] - nums[j]) == k) {
        flag++;
      }
    }
  }
  return flag;
}

int main() {
    
    vector<int> nums = {1,2,2,1};
    int k = 1;
    cout << countKDifference(nums, k) << endl;
    return 0;
}
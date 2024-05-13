#include <iostream>
#include <vector>
using namespace std;


#include <iostream>
#include <vector>
#include <bits/stdc++.h>
using namespace std;


    // SOLUTION ONE
    // Runtime
    // 84
    // ms
    // Beats
    // 88.04%
    // of users with C++
    // Memory
    // 60.89
    // MB
    // Beats
    // 78.75%
    // of users with C++
    // bool containsDuplicate(vector<int>& nums) {
    //     bool flag = false;
    //     for(int i = 0; i < nums.size(); i++)
    //     {
    //         if(nums[i] == nums[i+1])
    //         {
    //             flag = true;
    //             break;
    //         }
    //     }
    //     return flag;
    // }

    // SOLUTION TWO
    // Runtime
    // 94
    // ms
    // Beats
    // 65.89%
    // of users with C++
    // Memory
    // 73.19
    // MB
    // Beats
    // 31.37%
    // of users with C++
    bool containsDuplicate(vector<int>& nums) {
        unordered_set<int> seen; 
        for (int num : nums) {
            if (seen.find(num) != seen.end()) {
                return true;
            }   
            seen.insert(num);
        }
        return false;
    }



int main()
{
    vector<int> words = {0,1,2,3,4};
    cout << "[Result] : "<< numberOfEmployeesWhoMetTarget(words, 2) << endl;
    return 0;
}
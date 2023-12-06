#include <iostream>
#include <vector>
using namespace std;


int countPairs(vector<int>& nums, int target) {
    int totalPairs = 0;
    for(int i = 0; i <nums.size(); i++ ) {
        for(int j = 0; j < nums.size(); j++) {
            if((i < j) && ((nums[i] + nums[j]) < target)){
                totalPairs++;
            }
        }
    }
    return totalPairs; 
}

int main()
{
    vector<int> words = {-6,2,5,-2,-7,-1,3};
    cout << "[Result] : "<< countPairs(words, -2) << endl;
    return 0;
}
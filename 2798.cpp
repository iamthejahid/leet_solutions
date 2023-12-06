#include <iostream>
#include <vector>
using namespace std;


int numberOfEmployeesWhoMetTarget(vector<int>& hours, int target) {
    int totalEmployeesAchivedTarget = 0;
    for(int i = 0; i <hours.size(); i++) {
        if(hours[i] >= target) {
            cout << hours[i] << endl;
            totalEmployeesAchivedTarget++;
        }

        return totalEmployeesAchivedTarget;
    }

}

int main()
{
    vector<int> words = {0,1,2,3,4};
    cout << "[Result] : "<< numberOfEmployeesWhoMetTarget(words, 2) << endl;
    return 0;
}
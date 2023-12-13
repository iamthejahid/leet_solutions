// ** APPROVED **//

// #include <iostream>
// #include <vector>
// #include <string>


// using namespace std;

// int countMatches(vector<vector<string>>& items, string ruleKey, string ruleValue) {
      
//     vector<string>  rules = {"type", "color", "name"};
//     int flag = 0;
//     int typeIndex = 0;
//     for(int i = 0; i < 3; i++ ) {
//         if(rules[i] == ruleKey) {
//             typeIndex = i;
//             break;
//         }
//     }

//     for(int i = 0; i <items.size(); i++) {
//         if(items[i][typeIndex] == ruleValue) {
//             flag++;
//         }
//     }

//     return flag;    
    
// }

// main() {
//   vector<vector<string>> items = {
//     {"phone", "blue", "pixel"},
//     {"computer", "silver", "lenovo"},
//     {"phone", "gold", "iphone"}
//   };

//   string ruleKey = "color";
//   string ruleValue = "silver";

//   cout << countMatches(items, ruleKey, ruleValue);

//   return 0;
// }


// Optimized 

#include <iostream>
#include <vector>
#include <string>

using namespace std;

int countMatches(const vector<vector<string>>& items, const string& ruleKey, const string& ruleValue) {
    int flag = 0;

    const vector<string> rules = {"type", "color", "name"};
    const auto typeIndex = find(rules.begin(), rules.end(), ruleKey) - rules.begin();

    for (const auto& item : items) {
        if (item[typeIndex] == ruleValue) {
            flag++;
        }
    }

    return flag;
}

int main() {
    const vector<vector<string>> items = {
        {"phone", "blue", "pixel"},
        {"computer", "silver", "lenovo"},
        {"phone", "gold", "iphone"}
    };

    const string ruleKey = "color";
    const string ruleValue = "silver";

    cout << countMatches(items, ruleKey, ruleValue) << endl;

    return 0;
}

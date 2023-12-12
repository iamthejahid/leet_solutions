#include <iostream>
#include <vector>
#include <string>

using namespace std;

string restoreString(string s, const vector<int>& indices) {
  string result = s;
  for (int i = 0; i < indices.size(); i++) {
    result[indices[i]] = s[i];
  }
  return result;
}

int main() {
  string str = restoreString("codeleet", {4, 5, 6, 7, 0, 2, 1, 3});
  cout << str << endl;
  return 0;
}

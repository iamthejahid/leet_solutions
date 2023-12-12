#include <iostream>
#include <vector>

using namespace std;

bool arrayStringsAreEqual(const vector<string>& word1, const vector<string>& word2) {
    string str1;
    for (const string& s : word1) {
        str1 += s;
    }
    string str2;
    for (const string& s : word2) {
        str2 += s;
    }
    return str1 == str2;
}
//**  Accepted  **//

// Runtime
// Details
// 0ms
// Beats 100.00%of users with C++
// Memory
// Details
// 7.38MB
// Beats 10.57%of users with C++



#include <iostream>
#include <sstream>
#include <vector>


using namespace std;

string truncateSentence(const string& s, int k) {
    istringstream iss(s);
    vector<string> words;
    string word;

    // Split the sentence into words
    while (iss >> word) {
        words.push_back(word);
    }

    // Truncate to the first k words
    if (k <= words.size()) {
        words.resize(k);
    }

    // Join the words back into a sentence
    ostringstream oss;
    for (const string& w : words) {
        oss << w << " ";
    }

    string result = oss.str();
    // Remove the trailing space
    if (!result.empty()) {
        result.pop_back();
    }

    return result;
}

int main() {
    // Example usage:
    string example1 = "Hello how are you Contestant";
    int k1 = 4;
    cout << truncateSentence(example1, k1) << endl; // Output: Hello how are you

    string example2 = "What is the solution to this problem";
    int k2 = 4;
    cout << truncateSentence(example2, k2) << endl; // Output: What is the solution

    string example3 = "chopper is not a tanuki";
    int k3 = 5;
    cout << truncateSentence(example3, k3) << endl; // Output: chopper is not a tanuki

    return 0;
}

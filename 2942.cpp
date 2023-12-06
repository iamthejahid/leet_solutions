#include <iostream>
#include <vector>
#include <string>

using namespace std;


vector<int> findWordsContaining(vector<string>& words, char x) {
        vector<int> numbers;        
        for(int i = 0; i <words.size();i++) { 
            if(words[i].find(x) < words[i].length()) {
                numbers.push_back(i);
            }
        }
        return numbers;
}

int main()
{

    vector<string> words = {"abc","bcd","aaaa","cbc"};

    vector<int> numbers = findWordsContaining(words, 'a');
    for(int i = 0; i< numbers.size(); i++) {
        cout << numbers[i] << endl;
    }

    return 0;
}
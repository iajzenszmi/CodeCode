#include <iostream>
#include <string>
#include <iterator>
#include <vector>
#include <unordered_map>
#include <regex>

int main()
{
    using namespace std;
    // store user input
    string userInput;

    // Create an unordered_map string -> string
    unordered_map<string, string> morse_code = {
        {".-", "A"},
        {"-...", "B"},
        {"-.-.", "C"},
        {"-..", "D"},
        {".", "E"},
        {"..-.", "F"},
        {"--.", "G"},
        {"....", "H"},
        {"..", "I"},
        {".---", "J"},
        {"-.-", "K"},
        {".-..", "L"},
        {"--", "M"},
        {"-.", "N"},
        {"---", "O"},
        {".--.", "P"},
        {"--.-", "Q"},
        {".-.", "R"},
        {"...", "S"},
        {"-", "T"},
        {"..-", "U"},
        {"...-", "V"},
        {".--", "W"},
        {"-..-", "X"},
        {"-.--", "Y"},
        {"--..", "Z"},
        {"-----", "0"},
        {".----", "1"},
        {"..---", "2"},
        {"...--", "3"},
        {"....-", "4"},
        {".....", "5"},
        {"-....", "6"},
        {"--...", "7"},
        {"---..", "8"},
        {"----.", "9"}
    };

    cout << "Enter the Morse Code string:\n";
    getline(cin, userInput);

    // Set a word seperator regex
    regex ws_re("\\s");
    vector<string> vec_of_strings{
        sregex_token_iterator(userInput.begin(), userInput.end(), ws_re, -1), {}
    };

    for (const auto& code : vec_of_strings) {
        // This would swallow spaces as they are recognized as "" in the string
        if (code == "") {
            cout << " ";
        } else {
            cout << morse_code[code];
        }
    }

    return 0;
}

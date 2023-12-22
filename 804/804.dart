// Runtime
// Details
// 330ms
// Beats 6.67%of users with Dart
// Memory
// Details
// 150.84MB
// Beats 6.67%of users with Dart

int uniqueMorseRepresentations(List<String> words) {
  Map<String, String> letters = {
    "a": ".-",
    "b": "-...",
    "c": "-.-.",
    "d": "-..",
    "e": ".",
    "f": "..-.",
    "g": "--.",
    "h": "....",
    "i": "..",
    "j": ".---",
    "k": "-.-",
    "l": ".-..",
    "m": "--",
    "n": "-.",
    "o": "---",
    "p": ".--.",
    "q": "--.-",
    "r": ".-.",
    "s": "...",
    "t": "-",
    "u": "..-",
    "v": "...-",
    "w": ".--",
    "x": "-..-",
    "y": "-.--",
    "z": "--.."
  };
  List<String> morseWords = [];
  for (int i = 0; i < words.length; i++) {
    String morseWord = "";
    for (int j = 0; j < words[i].length; j++) {
      morseWord += letters[words[i][j]]!;
    }
    morseWords.add(morseWord);
  }
  return morseWords.toSet().length;
}

//** Approcah - 3 */

// int uniqueMorseRepresentations(List<String> words) {
//   const List<String> morse = [
//     ".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..",
//     ".---", "-.-", ".-..", "--", "-.", "---", ".--.", "--.-", ".-.",
//     "...", "-", "..-", "...-", ".--", "-..-", "-.--", "--.."
//   ];

//   return words.map((word) => word.split('').map((letter) => morse[letter.codeUnitAt(0) - 'a'.codeUnitAt(0)]).join()).toSet().length;
// }

main() {
  print(uniqueMorseRepresentations(["gin", "zen", "gig", "msg"]));
}

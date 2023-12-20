// Accepted
// Editorial
// Solution
// Runtime
// Details
// 404ms
// Beats 6.67%of users with Dart
// Memory
// Details
// 147.84MB
// Beats 93.33%of users with Dart

bool isAcronym(List<String> words, String s) {
  bool isAcronym = true;

  if (words.length != s.length) {
    return false;
  } else {
    for (int i = 0; i < words.length; i++) {
      if (words[i][0] != s[i]) {
        return false;
      }
    }
  }
  return isAcronym;
}

main() {
  var words = ["never", "gonna", "give", "up", "on", "you"];
  var s = "ngguoy";
  print(isAcronym(words, s));
  return 0;
}

// Accepted answer, but more time consuming and expensive, have to find another solution

// String truncateSentence(String s, int k) {
//   String result = "";
//   int flag = 0;

//   for (int i = 0; i < s.length; i++) {
//     if (s[i] == " ") {
//       flag++;
//     }

//     if (flag < k) {
//       result += s[i];
//     } else {
//       break;
//     }
//   }

//   return result.trim(); // Remove trailing spaces
// }

// ** Final solution **//

String truncateSentence(String s, int k) {
  List<String> words = s.split(' ');
  List<String> truncatedWords = words.sublist(0, k);
  return truncatedWords.join(' ');
}

main() {
  var s = "Hello how are you Contestant", k = 4;
  print(truncateSentence(s, k));
}

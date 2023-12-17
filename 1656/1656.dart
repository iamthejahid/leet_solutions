// Accepted answer, but more time consuming and expensive, have to find another solution

String truncateSentence(String s, int k) {
  String result = "";
  int flag = 0;

  for (int i = 0; i < s.length; i++) {
    if (s[i] == " ") {
      flag++;
    }

    if (flag < k) {
      result = result + s[i];
      print(flag);
    } else {
      break;
    }
  }
  return result;
}

main() {
  var s = "Hello how are you Contestant", k = 4;
  print(truncateSentence(s, k));
}

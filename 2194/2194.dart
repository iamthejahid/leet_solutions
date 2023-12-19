main() {
  var s = "K12:M8";

  var letterFirst = s[0];
  var firstDigit = s.substring(1, s.indexOf(":"));
  var letterLast = s[s.indexOf(":") + 1];
  var lastDigit = s.substring((s.indexOf(":") + 2), s.length);

  /// for k12:
  ///
  print(letterFirst.codeUnitAt(0) - letterLast.codeUnitAt(0));
}

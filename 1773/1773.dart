int countMatches(List<List<String>> items, String ruleKey, String ruleValue) {
  int flag = 0;

  int typeIndex = ["type", "color", "name"].indexOf(ruleKey);

  items.forEach((element) {
    if (element[typeIndex] == ruleValue) {
      flag++;
    }
  });

  return flag;
}

main() {
  final items = [
    ["phone", "blue", "pixel"],
    ["computer", "silver", "lenovo"],
    ["phone", "gold", "iphone"]
  ];

  final ruleKey = "color";
  final ruleValue = "silver";

  print(countMatches(items, ruleKey, ruleValue));
}

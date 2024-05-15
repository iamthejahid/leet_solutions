
// Runtime
// 323
// ms
// Beats
// 64.68%
// of users with Dart
// Memory
// 147.57
// MB
// Beats
// 79.22%
// of users with Dart


class Solution {
  static bool isValid(String s) {
    List<String> stack = [];

    for (int i = 0; i < s.length; i++) {
      if (s[i] == '(' || s[i] == '{' || s[i] == '[') {
        stack.add(s[i]);
      } else {
        if (stack.isEmpty) {
          return false;
        }

        if (s[i] == ')') {
          if (stack.last == '(') {
            stack.removeLast();
          } else {
            return false;
          }
        } else if (s[i] == '}') {
          if (stack.last == '{') {
            stack.removeLast();
          } else {
            return false;
          }
        } else if (s[i] == ']') {
          if (stack.last == '[') {
            stack.removeLast();
          } else {
            return false;
          }
        }
      }
    }
    return stack.isEmpty;
  }
}

void main() {
  print(Solution.isValid("(((({}))))[]")); // Output: true
  print(Solution.isValid("()")); // Output: true
  print(Solution.isValid("()[]{}")); // Output: true
  print(Solution.isValid("()]")); // Output: false
}

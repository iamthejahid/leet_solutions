//** Accepted both */

class Solution {
  String restoreString(String s, List<int> indices) {
    List<String> result = List.filled(s.length, '');
    for (int i = 0; i < indices.length; i++) {
      result[indices[i]] = s[i];
    }
    return result.join();
  }
}

// class Solution {
//   String restoreString(String s, List<int> indices) {
//     List<int> result = List<int>.filled(s.length, 0);
//     for (int i = 0; i < indices.length; i++) {
//         result[indices[i]] = s.codeUnitAt(i);
//     }
//     return String.fromCharCodes(result);
//   }
// }
// Runtime
// Details
// 75ms
// Beats 33.90%of users with JavaScript
// Memory
// Details
// 45.21MB
// Beats 16.83%of users with JavaScript


var isAcronym = function(words,  s) {
 var isAcronym = true;

  if (words.length != s.length) {
    return false;
  } else {
    for (var i = 0; i < words.length; i++) {
      if (words[i][0] != s[i]) {
        return false;
      }
    }
  }
  return isAcronym;
}


var words = ["alice","bob","charlie"]; var s = "abc";

console.log(isAcronym(words, s));
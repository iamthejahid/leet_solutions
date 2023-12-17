//*** Expensive */

// var truncateSentence = function(s, k) {
//     const list = s.split(' ');
//     const subList = list.slice(0, k);
//     return subList.join(' ');
// };

//*** Expensive Too! */

// Runtime
// Details
// 51ms
// Beats 56.62%of users with JavaScript
// Memory
// Details
// 43.12MB
// Beats 5.63%of users with JavaScript
var truncateSentence = function(s, k) {
    let wordCount = 0;
    let truncatedSentence = '';

    for (let i = 0; i < s.length; i++) {
        if (s[i] === ' ') {
            wordCount++;
            if (wordCount === k) {
                break;
            }
        }
        truncatedSentence += s[i];
    } 


    return truncatedSentence;
}

    


let s = "Hello how are you Contestant", k = 4;
truncateSentence(s, k);
var countMatches = function(items, ruleKey, ruleValue) {
    var flag = 0;

    var typeIndex = ["type", "color", "name"].indexOf(ruleKey); 

    items.array.forEach(element => {
        if(element[typeIndex] == ruleValue) {
            flag++;
        }
    });

    return flag;
}
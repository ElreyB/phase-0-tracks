// Function: that takes an array of words or phrases 
// 			and returns the longest word or phrase in the array
// input: an array of words or phrases
// steps: have an temp variable to hold the longest word
// 		  have a longest word value to compare to
// 		  build a loop that will go through the elements in the array
// 			if the word is longer than the longest word value
					// the longest word value to compare to becomes the new compare value
					// the temp variable value is that word
// output: the longest word

var phrases = ["long phrase","longest phrase","longer phrase"];
var names = ["Elrey", "Bob", "Bill Clinton", "Jack Daniels", "Cindy Smith"];
function longestWord(list) {
	valueToCompare = 0;
	word = "";
	for (var i = 0; i < list.length; i++) {
		if (list[i].length > valueToCompare) {
			valueToCompare = list[i].length;
			word = list[i]
		}
	} 
	return word;
}
// check length of phrases
for (var i = 0; i < phrases.length; i++) {
	console.log(phrases[i].length);
}
// driver code
console.log(longestWord(phrases));
console.log("--------------------");
// check length of names
for (var i = 0; i < names.length; i++) {
	console.log(names[i].length);
}
// driver code
console.log(longestWord(names));
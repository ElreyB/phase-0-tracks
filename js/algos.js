// Release 0
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
// longestWord function will return the first longest word in an array.
function longestWord(list) {
	var valueToCompare = 0;
	var word = "";
	for (var i = 0; i < list.length; i++) {
		if (list[i].length > valueToCompare) {
			valueToCompare = list[i].length;
			word = list[i]
		}
	} 
	return word;
}

// Release 1
// Function: that takes two objects and checks to see if the 
//   		 objects share at least one key-value pair.
// input: two objects
// steps: have empty arrays to hold the keys and values of each object
		// put the keys and values pairs of object in an array
		// loop over the arrays to compare them
		// if there is an element (an object key value pair) that are the same
			// return true
		// else return false
// output: a boolean

function compare(object1, object2) {
	var arr1 = [];
	var arr2 = [];
	for (var prop in object1) {
		arr1.push(prop, object1[prop]);
	}
	for (var key in object2) {
		arr2.push(key, object2[key]);
	}

}

// check length of phrases
// for (var i = 0; i < phrases.length; i++) {
// 	console.log(phrases[i].length);
// }
// driver code
console.log(longestWord(phrases));
console.log("--------------------");
// check length of names
// for (var i = 0; i < names.length; i++) {
// 	console.log(names[i].length);
// }
// driver code
console.log(longestWord(names));












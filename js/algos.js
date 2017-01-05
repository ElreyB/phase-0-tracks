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
	for (var i = 0; i < arr1.length; i++) {
		if (arr1[i] == arr2[i]) {
			return true;
		}
	}
	return false;
}

// Release 2
// Function: takes an integer for length, and builds and returns an 
//           array of strings of the given length. The words should be 
			// of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters
// input: an integer
// steps: have an empty array variable to hold words
		// have a empty string variable to hold the random letters
		// have a alphabet varible to grab letters from 
		// for as many times the function arugment is
		// create random words of random length
		// add random words to array
// output: an array of strings of the given length
function wordMaker(number) {
  var wordsList = [];
  for (var n = 0; n < number; n++ ){
      var word = "";
      var letters = "abcdefghijklmnopqrstuvwxyz";
      var wordLength = Math.floor(Math.random() * (10 - 1)) + 1;
      for( var i = 0; i < wordLength; i++ ){
          word += letters.charAt(Math.floor(Math.random() * letters.length));
      }
  wordsList.push(word);
  }
  return wordsList;
}
//JavaScript methods
// String.charAt(index) returns character at index
// var string = "hello" -> string.charAt(2) -> "l"
// Math.floor() returns the argument rounded down
// Math.floor(45.6) -> 45
// Math.random() retuns a between 0 (inclusive) and 1 (exclusive)
// Math.random() -> 0.4736293

// ================================================================================
// driver code  
// console.log(wordMaker(3));
// console.log(wordMaker(8));
// console.log(wordMaker(20));






// check length of phrases elements
// for (var i = 0; i < phrases.length; i++) {
// 	console.log(phrases[i].length);
// }
// driver code
//Release )
console.log(longestWord(phrases));
// check length of names elements
// for (var i = 0; i < names.length; i++) {
// 	console.log(names[i].length);
// }
console.log(longestWord(names));
console.log("--------------------");
//Release 1
console.log(compare({name: "Steven", age: 54},{name: "Janet", age: 64}));
console.log(compare({color: "Pink", animal: "dog"},{name: "Janet", age: 64}));
console.log("--------------------");
//Release 2
for (var i = 0; i < 10; i++ ) {
	var list = wordMaker(5);
	console.log(list);
	console.log("The longest word is " + longestWord(list));
	console.log("--------------------");
}









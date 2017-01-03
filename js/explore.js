// Pseudocode
// # Method:a function that takes a string as a parameter and reverses the string.
// # input: A string
// # steps: make a new string 
		//  the last letter in the original string
		//  will be the first letter in the new string
// # output: new reversed string

function reverse(string) {
	newString = "";
	for (var i = string.length-1; i >= 0; i--){
		newString += string[i];
	}
	return newString;
}

var nameReverse = reverse("Elrey");
console.log(nameReverse);
console.log("---------");
var phaseReverse = reverse("All the world is a stage and we are its players");
console.log(phaseReverse);
console.log("---------");
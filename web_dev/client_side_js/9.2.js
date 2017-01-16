// console.log("The script is running!");

// function addPinkBorder(event) {
//   console.log("click happened! here's the click event:");
//   console.log(event);
//   event.target.style.border = "2px solid pink";
// }

// var photo = document.getElementById("lizard-photo");
// photo.addEventListener("click", addPinkBorder);



function addBackgroundColor() {
	var photo = document.getElementById("lizard-photo");
	photo.style.padding = "3px";
	photo.style.backgroundColor = "green";
}
addBackgroundColor();

function addFontChange() {
	var tag = document.getElementsByTagName("a");
	var grumpy = tag[0];
	grumpy.style.fontSize = "3em";
}

addFontChange();
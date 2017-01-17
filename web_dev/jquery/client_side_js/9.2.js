// function addBackgroundColor() {
// 	var photo = document.getElementById("lizard-photo");
// 	photo.style.padding = "3px";
// 	photo.style.backgroundColor = "green";
// }
// addBackgroundColor();

$(function(){
	$("#lizard-photo").css({
		"background-color": "green", 
		"padding": "3px" 
	});
});

// function addFontChange() {
// 	var tag = document.getElementsByTagName("a");
// 	var grumpy = tag[0];
// 	grumpy.style.fontSize = "3em";
// }
// addFontChange();

// console.log("The script is running!");
$(function(){
	$("a").css({"font-size":"3em"});
});





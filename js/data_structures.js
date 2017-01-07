// PAIRING 7.2
// Elrey & Ally

var colors = ["blue", "red", "purple", "gold"]; // values
var names = ["Mr. Ed", "Bob", "Jim", "Jack"]; // properties
// console.log(colors);
// console.log(names);

colors.push("silver");
names.push("Lucy");

// console.log(colors);
// console.log(names);

var horses = {};

for (var i = 0; i < names.length; i++) {
  horses[names[i]] = colors[i];
}

console.log(horses);
var colors = ["blue", "silver", "white", "brown"];

var names = ["Bertha", "Ed", "Shock", "Eliza"];

colors.push("purple");
names.push("Boo");

var horses = {};

if(names.length == colors.length){
  for (var i = 0; i < names.length; i++) {
  	horses[names[i]] = colors[i]
  }
}else{
  console.log("Arrays are different lengths")
}
console.log(horses)
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

function Car(color, mpg, year, isLemon){
  this.color = color;
  this.mpg = mpg;
  this.year = year;
  this.isLemon = isLemon;

  this.start = function() {console.log("vroom!!");}
  
}

var car1 = new Car("red",32,1991,true);
var car2 = new Car("blue",27,2012,false);
var car3 = new Car("silver",41,2017,false);

console.log(car1)
car1.start();

console.log(car2)
car2.start();

console.log(car3)
car3.start();

var colors = ["blue", "red", "yellow", "orange"];
var names = ["ED", "Daisy", "Bolt", "Sam"];

colors.push("purple");
names.push("Hank");

console.log(colors);
console.log(names);

var horse = {};
for(var i =  0; i < colors.length; i++){
    horse[names[i]] = colors[i];
}
console.log(horse);

function Car(c,b,y){
    this.color = c;
    this.brand = b;
    this.year = y;
    this.speed = function() {console.log("Current speed is 60");};
};

var car = new Car("gray","honda", 2000);
var car2 = new Car("blue", "toyota", 2005);
var car3 = new Car("red", "ford", 1999);

console.log(car);
car.speed();
console.log("-----");
console.log(car2);
car2.speed();
console.log("-----");
console.log(car3);
car3.speed();
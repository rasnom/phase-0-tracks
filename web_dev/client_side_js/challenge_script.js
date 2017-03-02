console.log("Script is running");

var photo = document.getElementById("lizard-photo");
photo.style.border = "3px solid green";




function addBlueBorder(event) {
  console.log(event);
  event.target.style.border = "3px solid blue";
  var newli = document.createElement("li");
  var ul = document.getElementsByTagName("ul");
  var text = document.createTextNode("My chameleon likes to be petted.");
  newli.appendChild(text);
  ul[0].appendChild(newli);
}

var photo = document.getElementById("lizard-photo");
photo.addEventListener("click", addBlueBorder);
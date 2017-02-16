// function reverse
// input: string
// steps: 
// 	create new (empty) revstring
// 	iterate backwards through string adding each letter to revstring
// output: revstring

function reverse(originalString) {
	var reversedString = "";

	for (i = originalString.length-1; i >= 0; i--) {
		reversedString += originalString[i]
	};

	return reversedString;
}

console.log("something")
newString = reverse("something")
if (newString.length > 0) {
	console.log(newString);
};
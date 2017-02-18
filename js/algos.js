// function longest word/phrase
// input: array of words or phrases
// steps: 
// 	make an empty string to store the longest phrase so far
// 	loop through the array of phrases
// 		if any are longer than the longest so far, replace it
// output: the longest phrase

function longestPhrase(phraseList) {
	var longestSoFar = ''

	for (var i = 0; i < phraseList.length; i++) {
		if (longestSoFar.length < phraseList[i].length) {
			longestSoFar = phraseList[i]
		};
	};

	return longestSoFar;
};

var activities = ['skiing','basking in the sun','snoozing in a hammock'];
console.log(longestPhrase(activities));

var codeKeys = ['34DK5L3','9O9ON','00203 FF','2 4 R','66766E-3'];
console.log(longestPhrase(codeKeys));



// function sharedPair
// input: two objects
// steps:
// 	loop through all the keys in object1
// 		for each key check if it is a key in object 2
// 			if it is then check if the associated values are the same too
// 				if so return true
// 	return false if you get done looping
// output: true or false

function sharedPair(firstObject,secondObject) {

	return false;
};

var funyun = {species: 'cat', color: 'grey', motivation: 'being a jerk'};
var trixie = {species: 'pidgeon', color: 'grey', home: 'Boston'}
var suitcase = {type: 'roller', color: 'red', contents: 'clothes'}
var david = {job: 'valet', motivation: 'self expression', home: 'Boston'}

console.log(sharedPair(funyun,trixie));
console.log(sharedPair(funyun,suitcase));
console.log(sharedPair(suitcase,david));
console.log(sharedPair(trixie,david));



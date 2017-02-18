// function longest word/phrase
// input: array of words or phrases
// steps: 
// 	make an empty string to store the longest phrase so far
// 	loop through the array of phrases
// 		if any are longer than the longest so far, replace it
// output: the longest phrase

function longestPhrase(phraseList) {
	var longestSoFar = ""

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


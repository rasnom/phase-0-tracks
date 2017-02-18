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
			lengestSoFar = phraseList[i]
		};
	};

	return longestSoFar;
};
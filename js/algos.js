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
	for (key in firstObject) {
		if (key in secondObject) {
			if (firstObject[key] == secondObject[key]) {
				return true;
			};
		};
	};

	return false;
};

// var funyun = {species: 'cat', color: 'grey', motivation: 'being a jerk'};
// var trixie = {species: 'pidgeon', color: 'grey', home: 'Boston'}
// var suitcase = {type: 'roller', color: 'red', contents: 'clothes'}
// var david = {job: 'valet', motivation: 'self expression', home: 'Boston'}

// console.log(sharedPair(funyun,trixie));
// console.log(sharedPair(funyun,suitcase));
// console.log(sharedPair(suitcase,david));
// console.log(sharedPair(trixie,david));



// function randomWords
// input: integer number of words
// steps:
// 	make an empty array
// 	for loop number of words times
// 		generate a random word length
// 		for loop over that word length
// 			add a random letter to the word
// 		add the word to the array
// output: a array of random words

function randomWords(numWords) {
	wordList = []
	alphabet = 'abcdefghijklmnopqrstuvwxyz'

	for (var i = 0; i < numWords; i++) {
		wordLength = Math.floor(Math.random() * 10) + 1;
		newWord = '';
		for (var j = 0; j < wordLength; j++) {
			newWord += alphabet[Math.floor(Math.random() * 26)]
		};
		wordList.push(newWord);
	};
	return wordList;
};

// console.log(randomWords(14));

// longList = randomWords(888);
// minWordLength = longList[0].length;
// maxWordLength = minWordLength;
// for (var i = 0; i < longList.length; i++) {
// 	if (longList[i].length < minWordLength) {
// 		minWordLength = longList[i].length;
// 	} else if (longList[i].length > maxWordLength) {
// 		maxWordLength = longList[i].length;
// 	};
// };
// console.log('smallest word is ' + minWordLength + ' letters');
// console.log('largest word is ' + maxWordLength + ' letters');


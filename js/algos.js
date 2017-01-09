/* Function that takes array of words or 
phrases and returns the longest word or phrase

- for every item in array, check if array[i] > array[i+1], if yes flip them
- else move to next item in array and repeat question
- End loop once all items are swapped
- return last item in array

*/

function findLongest(phrasesArray){
	var isSwapped;
	var temp; // This is to store string temporarily
	do{
		isSwapped = false;
		// Loop until i+1 is less than array length so access is not out of bounds
		for(var i=0; i+1 < phrasesArray.length; i++){
			if(phrasesArray[i].length > phrasesArray[i+1].length){
				temp = phrasesArray[i]
				phrasesArray[i]= phrasesArray[i+1]
				phrasesArray[i+1]= temp;
				isSwapped = true; // Mark swapped
			}
		}
	}while(isSwapped)

	return phrasesArray[phrasesArray.length-1];
}

/*
Function that takes two objects and checks if objects share at least one
key-value pair
- loop through both objects
- for each key if key is the same, compare values
- if values are also the same, return true
- else return false and return to loop

*/

function findMatch(obj1,obj2){
	var answer;
	for (var key in obj1) {
		if (obj1.hasOwnProperty(key) && obj2.hasOwnProperty(key)) {
	        if(obj1[key] == obj2[key]){
	        	answer = true;
	        }else{
	        	answer = false;
	        }
	    }
	}
	return answer;
}

/*
Function takes integer n for length, returns array
of n random strings(with length 1-10 letters).
- Initiate empty array
- Run a while loop of i < n
- Generate random string
- Add string to array
- Increment i
*/

function randomData(n){
	var i = 0;
	var data = [];
	var chars = "abcdefghijklmnopqrstuvwxyz";
	var randomString;

	while(i < n){
		randomString ="";
		for (var j = Math.floor(Math.random() * 10) + 1; j > 0; --j){
			randomString += chars[Math.floor(Math.random() * chars.length)]
		}
		data[i] = randomString;
		i++;
	}
	return data;
}


//DRIVER CODE
var example = ["Wow, I cannot believe this is the longest phrase.","long phrase","longest phrase","longer phrase"];
console.log(findLongest(example));

var student1 = {name: "Steven", age: 54};
var student2 = {name: "Tamir", age: 54};
console.log(findMatch(student1,student2));
var student3 = {name: "Stacy", age: 14};
console.log(findMatch(student1,student3));

//console.log(randomData(4));

// Generate array 10 times and find longest string in each(print)
console.log("STARTING RELEASE 2 DRIVER CODE:             ")
var generatedArray;
for(var i=0;i<10;i++){
	generatedArray = [];
	generatedArray= randomData(8);
	console.log("-----------------------------")
	console.log("Array " +(i+1) + " = ");
	console.log(generatedArray);
	console.log("Longest word = " + findLongest(generatedArray));
}

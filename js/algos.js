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

//DRIVER CODE
var example = ["Wow, I cannot believe this is the longest phrase.","long phrase","longest phrase","longer phrase"];
console.log(findLongest(example));

var student1 = {name: "Bob", age: 54};
var student2 = {name: "Tamir", age: 54};
console.log(findMatch(student1,student2));


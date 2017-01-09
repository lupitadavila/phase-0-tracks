/* Function that takes array of words or 
phrases and returns the longest word or phrase

- for every item in array, check if array[i] > array[i+1], if yes flip them
- else move to next item in array and repeat question
- End loop once all items are swapped

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

	return phrasesArray;
}

var example = ["Wow, I cannot believe this is the longest phrase.","long phrase","longest phrase","longer phrase"];

console.log(findLongest(example));

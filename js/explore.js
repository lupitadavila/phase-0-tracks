/* Function that takes a string and reverses it
 1. Create new empty string
 2. Find length of string and reverse loop through it
 3. For each letter in loop, add to new string
 4. Return new string
 */

 function reverse(str){
 	var newStr ="";
	for (var i= str.length-1; i >= 0; i--) {
		newStr += str[i];
	}
	return newStr;
 }

// DRIVER CODE
console.log(reverse("hello"));

// Call function and store result in variable
console.log("We will be reversing the following string: 'lupita' and then storing in variable name");
var name = reverse("lupita");

// Print variable if condition is true
if(name.length>1){
	console.log("var name = " + name);
}
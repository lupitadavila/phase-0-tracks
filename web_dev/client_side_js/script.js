var content = document.getElementById("content-section");
content.style.background = "white";
content.style.padding = "40px";

var animals = document.getElementById("animals");

function changeBackground(event){
	var content = document.getElementById("content-section");
	console.log(event.target);
	console.log(event.target.innerText);
	
	if(event.target.innerText == "Cats"){
		content.style.backgroundImage = "url(images/cat.jpg)";
	}else if(event.target.innerText == "Dogs"){
		content.style.backgroundImage = "url(images/dog.jpg)";
	}else if(event.target.innerText == "Lizards"){
		content.style.backgroundImage = "url(images/lizard.jpg)";
	}else if (event.target.innerText == "Hamsters"){
		content.style.backgroundImage = "url(images/hamster.jpg)";
	}else { //it's a fish
		content.style.backgroundImage = "url(images/fish.jpg)";
	}
	content.style.color = "white";
}
animals.addEventListener("click", changeBackground);
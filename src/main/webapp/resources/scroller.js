var dandy = document.getElementsByClassName('seeds');

const flightPath = {
	curviness: 1.25,
	values: [
		{x: 100, y: -20}
	]
}

for(var i = 0; i <dandy.length; i++) {
	dandy[i].addEventListener('mouseover', mouseOverEffect);
	dandy[i].addEventListener('mouseout', mouseOutEffect);
}




function mouseOverEffect() {
	this.classList.add("seed-visible");
}

function mouseOutEffect() {
	this.classList.remove("seed-visible");
}
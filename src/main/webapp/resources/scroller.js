var dandy = document.getElementsByClassName('seeds');

const flightPath = {
	curviness: 1.25,
	values: [
		{x: 100, y: -20}
	]
}

dandy.addEventListener('mouseover', mouseOverEffect);
dandy.addEventListener('mouseout', mouseOutEffect);

function mouseOverEffect() {
	this.classList.add("seed-visible");
}

function mouseOutEffect() {
	this.classList.remove("seed-visible");
}
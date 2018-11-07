autowatch = 1;
outlets = 2;

var amps = new JitterMatrix('amps');

function draw() {
		raw = amps.getcell(1)[0];

		scaledradius = (raw / 100) + 0.2;
		scaledthreshold = (raw/ 1000) + 0.04;

		outlet(0, scaledradius);
		outlet(1, scaledthreshold);
}

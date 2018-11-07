autowatch = 1;
outlets = 2;

var bassAmps = new JitterMatrix('bassAmps');
var vocalAmps = new JitterMatrix('vocalAmps');
var op3m = new JitterObject('jit.3m');

function bang() {
		raw = bassAmps.getcell(1)[0];
		scaledradius = (raw / 100) + 0.2;

		scaledthreshold = (raw/ 750) + 0.03;
		outlet(0, scaledradius);
		outlet(1, scaledthreshold);

		op3m.matrixcalc(vocalAmps, vocalAmps);
		
}

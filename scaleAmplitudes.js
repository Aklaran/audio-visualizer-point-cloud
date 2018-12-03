autowatch = 1;
outlets = 2;

var bassAmps = new JitterMatrix('bassAmps');
var vocalAmps = new JitterMatrix('vocalAmps');
var op3m = new JitterObject('jit.3m');

var bassAvg = 0
declareattribute('bassAvg');

function bang() {
		raw = bassAvg;
		scaledradius = (raw / 10) + 0.2;

		scaledthreshold = (raw/ 75) + 0.03;
		outlet(0, scaledradius);
		outlet(1, scaledthreshold);

		op3m.matrixcalc(vocalAmps, vocalAmps);
		
}

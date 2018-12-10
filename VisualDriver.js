autowatch = 1;

include('Vector');
include('PointCloud');
include('ParticleJet');
include('ParticleVector');
include('PlayerCursor');
include('SongNotes');

/*  --------------------
    Jitter context setup
    --------------------  */

var window = new JitterObject('jit.window', 'rockband');
window.floating = 0;
window.size = [600, 600];
window.fsaa = 1;
window.pos = [750, -2000];
window.depthbuffer = 0;
window.sync = 1; // determines whether window syncs to screen refresh rate

var render = new JitterObject('jit.gl.render', 'rockband');
render.erase_color = [1, 1, 1, 0.7]; // white background

var sketch = new JitterObject('jit.gl.sketch', 'rockband');
sketch.blend_enable = 1;
sketch.automatic = 0;
sketch.color = [0, 0, 0, 0.4]; // black, semi-transparent
sketch.blend = 'alphablend';

var scoreText = new JitterObject('jit.gl.text', 'rockband');
scoreText.text('score: ' + 0);
scoreText.size(40);
scoreText.position = [-.75, .7 ,0.];

/*  --------------------------------------
    References to variables within patcher
    --------------------------------------  */

var noiseMatrix = new JitterMatrix('noiseMatrix'); // accessing the jitter matrix created inside the patch


var dim = 50;
declareattribute('dim');

var threshold = 0;
declareattribute('threshold');

var particleRate = 1;
declareattribute('particleRate');

var radius = .2;
declareattribute('radius');

var hue = 0;
declareattribute('hue');

var isCorrect = 0;
declareattribute('isCorrect');

var score = 0;
declareattribute('score');

/*  --------------------------------------------------
    Creating Point Cloud object with patcher variables
    --------------------------------------------------  */

var pointCloud = new PointCloud(sketch);
var jetOrigin = Object.create(ParticleVector);
var particleJet = new ParticleJet(jetOrigin, radius, sketch, 100);

var staffLower = -.75;
var staffUpper = -.2;
var meetingPointX = -.5;

// to be replaced with message attributes
var minNote = 45;
var maxNote = 65;

var playerCursor = new PlayerCursor(sketch, staffUpper, staffLower, meetingPointX, minNote, maxNote);
var songNotes = new SongNotes(sketch, staffUpper, staffLower, meetingPointX, .5, minNote, maxNote);

var playerPos;
function setPlayerPos(e) {
    if (e >= 0) {
        playerPos = e;
        
    }
    playerCursor.updatePlayerY(playerPos);
}

// Updates the upcoming notes stored in the songNotes object
// every time the list is updated in Max
function list(a) {
    projectedNotes = arrayfromargs(messagename, arguments);
    
    songNotes.updateNotes(projectedNotes);
}

function updateScore() {
    if (score < 200) { 
        scoreText.text('score: ' + score);
    } else {
        scoreText.text('score: ' + score);
    }
}


function draw() {
    render.erase();

    //                ALL DRAW CALLS                 //
    // ----------------------------------------------//

    pointCloud.drawCloud(noiseMatrix, threshold);

    if (isCorrect === 1) {
        particleJet.setRate(particleRate);
    } else {
        particleJet.setRate(0);
    }

    particleJet.setRadius(radius);
    particleJet.update(hue);
    
    playerCursor.drawStaff();
    playerCursor.drawCursor();
    playerCursor.drawPlayerTrail();
    
    songNotes.drawNotes();

    updateScore();

    // ----------------------------------------------//

    sketch.draw();

    render.drawswap();
    sketch.reset();

    outlet(0, 'bang'); // outputting drawbang to count fps
}
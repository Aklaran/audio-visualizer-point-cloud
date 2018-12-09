autowatch = 1;

include('Vector');
include('PointCloud');
include('ParticleJet');
include('ParticleVector');
include('PlayerCursor');

/*  --------------------
    Jitter context setup
    --------------------  */

var window = new JitterObject('jit.window', 'point_cloud');
window.floating = 0;
window.size = [600, 600];
window.fsaa = 1;
window.pos = [750, -2000];
window.depthbuffer = 0;
window.sync = 1; // determines whether window syncs to screen refresh rate

var render = new JitterObject('jit.gl.render', 'point_cloud');
render.erase_color = [1, 1, 1, 0.7]; // white background

var sketch = new JitterObject('jit.gl.sketch', 'point_cloud');
sketch.blend_enable = 1;
sketch.automatic = 0;
sketch.color = [0, 0, 0, 0.4]; // black, semi-transparent
sketch.blend = 'alphablend';

/*  --------------------------------------
    References to variables within patcher
    --------------------------------------  */

var noiseMatrix = new JitterMatrix('noiseMatrix'); // accessing the jitter matrix created inside the patch


var dim = 50;
declareattribute('dim');

var threshold = 0.1;
declareattribute('threshold');

var particleRate = 1;
declareattribute('particleRate');

var radius = .2;
declareattribute('radius');

var hue = 0;
declareattribute('hue');

var playerPos = 0;
function setPlayerPos(e) {
    if (e >= 0) {
        playerPos = e;
    }
}

/*  --------------------------------------------------
    Creating Point Cloud object with patcher variables
    --------------------------------------------------  */

var pointCloud = new PointCloud(sketch);
var jetOrigin = Object.create(ParticleVector);
var particleJet = new ParticleJet(jetOrigin, radius, sketch);
var playerCursor = new PlayerCursor(sketch, -.2, -.5, -.5);

function updateNoiseMatrix() {
    post(hue);
} 

function drawPointCloud() { 
    post(hue);
}


function draw() {
    render.erase();

    //                ALL DRAW CALLS                 //
    // ----------------------------------------------//

    // pointCloud.drawCloud(noiseMatrix, threshold);
    // particleJet.setRate(particleRate);
    // particleJet.setRadius(radius);
    // particleJet.update(hue);
    playerCursor.updatePlayerY(playerPos);
    playerCursor.drawStaff();
    playerCursor.drawCursor();
    playerCursor.drawPlayerTrail();
    

    // ----------------------------------------------//

    sketch.draw();

    render.drawswap();
    sketch.reset();

    outlet(0, 'bang'); // outputting drawbang to count fps
}
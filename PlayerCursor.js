include('FixedLengthQueue');
include('ParticleVector');

/*  ----------------------------------
    Definition for a Player Cursor class
    ---------------------------------- */

/*  Player Cursor class is responsible for displaying
    the player's location on the "staff" based on the
    pitch of their voice, as well as the trail of prev.
    pitches. */

function PlayerCursor(sketch, yUpper, yLower, x, minNote, maxNote) {
    this.playerY = 100;
    this.sketch = sketch;
    this.yUpper = yUpper;
    this.yLower = yLower;
    this.x = x;
    this.minNote = minNote;
    this.maxNote = maxNote;

    this.pastPoses = new FixedLengthQueue(35);
}

PlayerCursor.prototype = {

    updatePlayerY: function(midiNote) {
        if (midiNote > maxNote) { 
            midiNote = maxNote;
        } else if (midiNote < minNote) {
            midiNote = minNote;
        }
        relScale = this.maxNote - this.minNote;
        relNote = (midiNote - this.minNote) / relScale;
        availSpace = this.yUpper - this.yLower;
        relPos = availSpace * relNote;

        this.playerY = this.yLower + relPos;

        // push to past positions queue
        this.pastPoses.push(this.playerY);
    },

    drawStaff: function() {
        this.sketch.linesegment(this.x, this.yLower, 0, this.x, this.yUpper, 0);
    },

    drawCursor: function() {
        this.sketch.moveto(this.x, this.playerY, 0);
        this.sketch.glcolor(1, 0, 0, 1);

        this.sketch.circle(1 / 50);

    },

    drawPlayerTrail: function() {
        currX = this.x;
        currY = this.playerY;
        lastPoint = Object.create(ParticleVector);
        lastPoint.x = currX;
        lastPoint.y = currY;

        for (var i = this.pastPoses.length - 1; i > -1; i--) {
            currX -= .01;
            currY = this.pastPoses[i];

            this.sketch.gllinewidth(4);
            this.sketch.linesegment(currX, currY, 0, lastPoint.x, lastPoint.y, 0);
            
            lastPoint.x = currX;
            lastPoint.y = currY;
        }
    },


}
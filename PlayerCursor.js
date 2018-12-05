/*  ----------------------------------
    Definition for a Player Cursor class (VIEW)
    ---------------------------------- */

/*  Player Cursor class is responsible for displaying
    the player's location on the "staff" based on the
    pitch of their voice, as well as the trail of prev.
    pitches. */

function PlayerCursor(sketch, yUpper, yLower, x) {
    this.playerY = 0;
    this.sketch = sketch;
    this.yUpper = yUpper;
    this.yLower = yLower;
    this.x = x;
}

PlayerCursor.prototype = {

    updatePlayerY: function(note) {
        relNote = note / 128;
        availSpace = this.yUpper - this.yLower;
        relPos = availSpace * relNote;

        this.playerY = this.yLower + relPos;
    },

    drawStaff: function() {
        this.sketch.linesegment(this.x, this.yLower, 0, this.x, this.yUpper, 0);
    },

    drawCursor: function() {
        this.sketch.moveto(this.x, this.playerY, 0);
        post(this.playerY);
        post();
        this.sketch.glcolor(1, 0, 0, 1);

        this.sketch.circle(1 / 50);

    }


}
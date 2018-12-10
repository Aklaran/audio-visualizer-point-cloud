include('FixedLengthQueue');
include('ParticleVector');

/*  ----------------------------------
    Definition for a Song Notes class
    ---------------------------------- */

/*  Song Notes class is responsible for displaying
    the upcoming notes of the song, where the note
    that is at the playerX is the current note the
    player is being scored on. */

function SongNotes(sketch, yUpper, yLower, x, qNoteLength) {
    this.sketch = sketch;
    this.yUpper = yUpper;
    this.yLower = yLower;
    this.playerX = x;
    this.quarterNoteLength = qNoteLength;

    this.notes = [];
}

SongNotes.prototype = {
    updateNotes: function(notes) { 
        this.notes = notes;
        post('dickbutt');
        post(this.notes);
        post();
    },

    getNoteY: function(midiNote) {
        relNote = midiNote / 128;
        availSpace = this.yUpper - this.yLower;
        relPos = availSpace * relNote;

        return this.yLower + relPos;
    },

    drawNotes: function() {
        prevX = this.playerX;
        prevY = this.getNoteY(this.notes[0]);
        for (var i = 1; i < this.notes.length; i++) {
            currX = prevX + this.quarterNoteLength;
            currY = this.getNoteY(this.notes[i]);

            if (prevY === currY) {
                this.sketch.linesegment(prevX, prevY, 0, currX, currY, 0);
            } else {
                this.sketch.linesegment(prevX, prevY, 0, currX, prevY, 0);
            }

            prevX = currX;
            prevY = currY;
        }
    }



}
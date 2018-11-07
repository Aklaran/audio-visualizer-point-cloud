/*  -----------------------------
    Definition for a Vector class 
    ----------------------------- */

function Vector(x, y, z){
    this.x = x || 0.0;
    this.y = y || 0.0;
    this.z = z || 0.0;
}

Vector.prototype = {

    add: function(x, y, z) {
        this.x += x;
        this.y += y;
        this.z += z;
    },

    // subtract:

    // subtractNew:

    // multiply:

    // multiplyNew:

    // divide:

    // divideNew:

    // rotate:

    // length:

    // normalize:

    distance: function(v2) {
        dx = Math.pow((v2.x - this.x), 2);
        dy = Math.pow((v2.y - this.y), 2);
        dz = Math.pow((v2.z - this.z), 2);
        return Math.sqrt(dx + dy + dz);
    },

    // get:

    // set:

}
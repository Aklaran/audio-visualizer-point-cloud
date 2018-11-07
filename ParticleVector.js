var ParticleVector = {
    x: 0.0,
    y: 0.0,
    z: 0.0,

    add: function(vector) {
        this.x += vector.x;
        this.y += vector.y;
        this.z += vector.z;
    },

    newFromAdd: function(vector) {
        newVector = Object.create(ParticleVector);
        newVector.x = this.x + vector.x;
        newVector.y = this.y + vector.y;
        newVector.z = this.z + vector.z;

        return newVector;
    },

    multiply: function(scalar) {
        this.x *= scalar;
        this.y *= scalar;
        this.z *= scalar;
    },

    getMagnitude: function() {
        return Math.sqrt((this.x * this.x) + (this.y * this.y) + (this.z + this.z))
    },

    normalize: function() {
        mag = this.getMagnitude();
        if (mag > 0) {
            this.x /= mag;
            this.y /= mag;
            this.z /= mag;
        }
    },
}
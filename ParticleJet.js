autowatch = 1;

include('ParticleVector');
include('Particle');

// Particle Array

function ParticleJet (origin, radius, sketch) {
    this.origin = origin;
    this.pArray = []
    this.angle = 0;
    this.rate = 0;
    this.radius = radius
    this.sketch = sketch;
}

ParticleJet.prototype = {

    setRadius: function(radius) {
        this.radius = radius;
    },

    setRate: function(rate) {
        this.rate = rate;
    },

    incrementAngle: function() {
        this.angle += this.rate;
        this.angle %= 360;
    },

    // this method pushes 360 particles onto pArray, which travel outward in a circle
    pushRound: function() {
        
        var rad = this.angle * Math.PI / 180;
        var velo = Object.create(ParticleVector);
        velo.x = Math.cos(rad);
        velo.y = Math.sin(rad);

        pOrigin = this.origin.newFromAdd(velo);
        pOrigin.multiply(radius/4);

        velo.multiply(Math.random() / 35);

        this.pArray.push(new Particle(pOrigin, velo, this.rate, this.radius, 100*(this.radius*2)));

        this.incrementAngle();
    },

    runChildren: function() {
        for (var i = this.pArray.length - 1; i >= 0; i--) {
            this.pArray[i].run(this.sketch);
            if (this.pArray[i].isDead()) {
                this.pArray.splice(i, 1);
            }
        }
    },

    update: function() {
        for (i = 0; i < this.rate; i++) {
            this.pushRound();
        }
        this.runChildren();
    },
}
autowatch = 1;

include('ParticleVector');
include('Particle');

// Particle Array

function ParticleJet (origin, radius, sketch, childLifespan) {
    this.origin = origin;
    this.pArray = []
    this.angle = 0;
    this.rate = 0;
    this.radius = radius
    this.sketch = sketch;

    this.childLifespan = childLifespan
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

    setHue: function(hue) {
        if (typeof hue !== "undefined") {
            this.hue = hue
        }
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

        this.pArray.push(new Particle(pOrigin, velo, this.childLifespan, this.hue));

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

    update: function(hue) {
        this.setHue(hue);
        for (i = 0; i < this.rate * 10; i++) {
            this.pushRound();
        }
        this.runChildren();
    },
}
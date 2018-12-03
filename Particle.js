/*  -------------------------------
    Definition for a particle class
    ------------------------------- */

/*  Particles are given an initial velocity */
    
include('ParticleVector');

function Particle(origin, velo, blueWeight, redWeight, lifespan, hue) {
    this.location = Object.create(ParticleVector);
    this.velocity = Object.create(ParticleVector);
    this.acceleration = Object.create(ParticleVector);

    // Set location attributes to origin attributes, so we don't edit the origin object
    this.location.x = origin.x;
    this.location.y = origin.y;
    
    // Give the particle a random direction
    this.velocity.x = velo.x //(Math.random() * 2 - 1) / 70.0; // range between (-1, 1)
    this.velocity.y = velo.y //(Math.random() * 2 - 1) / 70.0; // range between (-1, 1)

    // Set the acceleration equal to its direction, but normalized so all particles have the same velocity.
    this.acceleration.x = this.velocity.x;
    this.acceleration.y = this.velocity.y;
    this.acceleration.normalize();
    this.acceleration.multiply((Math.random() * 2 - 1) / 70.0);

    this.blueWeight = blueWeight;
    this.redWeight = redWeight;


    this.hue = 283

    this.maxLife = lifespan;
    this.lifeRemaining = this.maxLife;
}

Particle.prototype = {

    isDead: function() {
        return this.lifeRemaining <= 0;
    },

    update: function() {
        // Called every frame, adds acceleration to velocity like physics yknow
        this.velocity.add(this.acceleration);
        // then moves the particle based on its velocity
        this.location.add(this.velocity);
        // and reduces the acceleration so the particle slows down
        this.acceleration.multiply(0.5);
        // Finally brings the particle closer to death
        this.lifeRemaining -= 2;
    },

    display: function(sketch) {
        // builtin jit.gl.sketch method moveto(x, y, z)
        sketch.moveto(this.location.x, this.location.y, this.location.z);

        // set the opacity of the particle based on how long it has been alive
        var alpha = this.lifeRemaining / this.maxLife;
        sketch.glcolor(this.redWeight, 0, this.blueWeight, alpha);
        sketch.circle(Math.random() / 50);

        // create and draw a frame circle
        sketch.glcolor(0, 0, 0, alpha);
        sketch.gllinewidth(1);
        sketch.framecircle(Math.random() / 50);
    },

    run: function(sketch) {
        this.update();
        this.display(sketch);
    },

}
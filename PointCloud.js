/*  ----------------------------------
    Definition for a Point Cloud class 
    ---------------------------------- */

/*  A point cloud is a collection of points
    moving pseudorandomly in 2D space
    where points closer than a threshold distance together
    are connected by line segments. */

include('mergeSort');

function PointCloud(sketch) {
    this.pointsArray = [];
    this.sketch = sketch;
}

PointCloud.prototype = {

    updatePointsArray: function(noiseMatrix) {
        this.pointsArray = [];
        // this.pointsArray.splice(0, this.pointsArray.length);

        for (var i = 0; i < dim; i++) {
            var p1 = noiseMatrix.getcell(i);
            var vec1 = new Vector(p1[0], p1[1], 0);
            this.pointsArray.push(vec1);
        }
        
        for (var i = 0; i < dim; i++) {
        }
    },

    drawLineSegment: function(vec1, vec2, threshold) {
        var dist = vec1.distance(vec2)
        if (dist < threshold) {
            this.sketch.linesegment(vec1.x, vec1.y, 0, vec2.x, vec2.y, 0);
        }  
    },

    bruteForce: function(arr, threshold) {
        if (arr.length == 0) { 
            return;
        }

        for (var i = 0; i < arr.length-1; i++) {

            for (var j = i+1; j < arr.length; j++) {

                this.drawLineSegment(arr[i], arr[j], threshold);
            }
        }
    },

    drawStrip: function(strip, threshold) {
        for (var i = 0; i < strip.length - 1; i++) {
            for (var j = i+1; j < strip.length; j++) {
                this.drawLineSegment(strip[i], strip[j], threshold)
            }
        }
    },

    drawCloudUtil: function(Px, Py, threshold) {
        if (Px.length <= 3) {
            this.bruteForce(Px, threshold);
        } else {
            var mid = Math.floor(Px.length/2);
            var midPoint = Px[mid];
    
            var Lx = Px.slice(0, mid+1);
            var Rx = Px.slice(mid+1);

            var Ly = [];
            var Ry = [];
            for (var i = 0; i < Py.length; i++) {
                if (Py[i].x < midPoint.x) {
                    Ly.push(Py[i]);
                } else {
                    Ry.push(Py[i]);
                }
            }
    
            this.drawCloudUtil(Lx, Ly, threshold);
            this.drawCloudUtil(Rx, Ry, threshold);
    
            var Sy = []
            for (var i = 0; i < Py.length; i++) {
                if (Math.abs(Py[i].x - midPoint.x) <= threshold) {
                    Sy.push(Py[i]);
                }
            }
    
            this.drawStrip(Sy, threshold);
        }
    },


    drawCloud: function(noiseMatrix, threshold) {

        this.updatePointsArray(noiseMatrix);

        var Px = mergeSortX(this.pointsArray);
        var Py = mergeSortY(this.pointsArray);

        this.drawCloudUtil(Px, Py, threshold);
    },

     // Brute force method to draw lines between points w/ distance lower than threshold
    drawLines: function (dim, threshold) {
        for (var i = 0; i < dim-1; i++) {
            var c1 = noiseMatrix.getcell(i);
            var loc1 = new Vector(c1[0], c1[1], 0);
    
            for (var j = i+1; j < dim; j++) {
                var c2 = noiseMatrix.getcell(j);
                var loc2 = new Vector(c2[0], c2[1], 0);
    
                var distance = loc1.distance(loc2);
                if (distance < threshold) {
                    this.sketch.linesegment(loc1.x, loc1.y, 0, loc2.x, loc2.y, 0);
                }
            }
        }
    }
}
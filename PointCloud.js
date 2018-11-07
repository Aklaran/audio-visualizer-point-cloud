/*  ----------------------------------
    Definition for a Point Cloud class 
    ---------------------------------- */

/*  A point cloud is a collection of points
    moving pseudorandomly in 2D space
    where points closer than a threshold distance together
    are connected by line segments. */

function PointCloud(pointsMatrix, sketch) {
    this.pointsMatrix = pointsMatrix; // This won't scale with size in the patcher bro
    this.sketch = sketch;
}

PointCloud.prototype = {

    drawLines: function (dim, threshold) {
        for (var i = 0; i < dim-1; i++) {
            var c1 = this.pointsMatrix.getcell(i);
            var loc1 = new Vector(c1[0], c1[1], 0);
    
            for (var j = i+1; j < dim; j++) {
                var c2 = this.pointsMatrix.getcell(j);
                var loc2 = new Vector(c2[0], c2[1], 0);
    
                var distance = loc1.distance(loc2);
                if (distance < threshold) {
                    this.sketch.linesegment(loc1.x, loc1.y, 0, loc2.x, loc2.y, 0);
                }
            }
        }
    }
}
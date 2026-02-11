/****************************************************
 Parametric Washer / Spacer (MakerWorld / OpenSCAD)
****************************************************/

/* [Parametric Washer (in mm)] */

Shape = 0; // [0:Circle, 1:Triangle, 2:Square, 3:Polygon]

// Outer Diameter > Inner Diameter
Outer_Diameter = 20; // [1:0.1:200]
Inner_Diameter = 5;  // [0:0.1:199]
Height = 3; // [0.2:0.1:50]

// Used only when Shape=Polygon
Polygon_Sides = 6; // [3:1:20]

/* [Quality] */
$fn = 128; // [16:1:256]


// ---------- Helpers ----------
module regular_ngon(n, r) {
    polygon(points=[
        for (i = [0:n-1])
            [r*cos(360*i/n), r*sin(360*i/n)]
    ]);
}

module outer_profile(shape, od, n) {
    if (shape == 0) {
        circle(d = od);
    } else if (shape == 1) {
        regular_ngon(3, od/2);
    } else if (shape == 2) {
        // square whose diagonal = od
        square([od / sqrt(2), od / sqrt(2)], center = true);
    } else {
        regular_ngon(max(3, n), od/2);
    }
}

module washer(shape, od, id, h, n) {
    assert(od > id, "Outer_Diameter must be > Inner_Diameter");
    linear_extrude(height = h)
        difference() {
            outer_profile(shape, od, n);
            if (id > 0) circle(d = id);
        }
}

// ---------- Build ----------
washer(Shape, Outer_Diameter, Inner_Diameter, Height, Polygon_Sides);

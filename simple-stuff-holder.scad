shape_size = 50;        // The side length of the square.
hole_clearance = 2;     // The gap between the square edge and the hole.
object_height = 10;     // The height (thickness) of the 3D object.
corner_radius = 5;      // The radius of the rounded corners.
$fn = 50;

// --- Hole Shape Control ---
square_hole = false; // Set to 'true' for a square hole, 'false' for a circle hole.

// --- Module Definition ---
module extruded_shape() {
	linear_extrude(height = object_height, center = true) {
		difference() {
			// 1. Create the base rounded square.
			minkowski() {
				square(shape_size - (corner_radius * 2), center = true);
				circle(r = corner_radius);
			}
			
			// 2. Subtract the hole based on the control variable.
			if (square_hole) {
				// Creates a square hole
				square(shape_size - (hole_clearance * 2), center = true);
			} else {
				// Creates a circular hole
				circle(d = shape_size - (hole_clearance * 2));
			}
		}
	}
}

// --- Module Execution ---
extruded_shape();

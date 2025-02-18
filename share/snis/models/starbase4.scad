
$fn=8;

module ring(radius)
{
	difference() {
		scale(v = [1, 1, 0.15])
			sphere(r = radius);
		cylinder(h = radius * 2, r1 = radius * 0.8, r2 = radius * 0.8, center = true);
	}
}

module spoke(thickness, length, angle, displacement)
{
	translate(v = [displacement, 0, 0])
		rotate(a = angle, v = [0, 1, 0])
			cube(size = [thickness, thickness, length], center = true);
}

module spoke_set(thickness, length, angle, displacement)
{
	spoke(thickness, length, angle, displacement);
	rotate(a = 90, v = [0, 0, 1])
		spoke(thickness, length, angle, displacement);
	rotate(a = -90, v = [0, 0, 1])
		spoke(thickness, length, angle, displacement);
	rotate(a = 180, v = [0, 0, 1])
		spoke(thickness, length, angle, displacement);
}

union()
{
	ring(80);
	translate(v = [0, 0, -20])
		ring(60);
	translate(v = [0, 0, -13])
	rotate(a = 45, v = [0, 0, 1])
		spoke_set(4, 27, 45, 59);
	translate(v = [0, 0, 13])
	spoke_set(4, 76, -28, 32);
	rotate(a = 45, v = [0, 0, 1])
		translate(v = [0, 0, -25])
			spoke_set(2, 140, 8, 10);
	translate(v = [0, 0, -85])
		sphere(r = 10, $fn=20);
	translate(v = [0, 0, 45])
		sphere(r = 26, $fn=20);
}


use <imposter_docking_port.scad>;
docking_ports = false;
if (docking_ports) {
	docking_port(-75, 0, 0, 0, 0, 1, 0, 0.3);
	docking_port(75, 0, 0, 0, 0, 1, 180, 0.3);
	docking_port(0, 75, 0, 0, 0, 1, -90, 0.3);
	docking_port(0, -75, 0, 0, 0, 1, 90, 0.3);
}


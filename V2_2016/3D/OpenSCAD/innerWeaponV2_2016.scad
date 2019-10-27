difference()
{
    union()
    {
        translate([0, 68, 0])
            cylinder(r=15, h = 21);
        color( "Red", 1 )
        difference()
        {
            minkowski()
            {
                translate([-31, 6, 10])
                    linear_extrude(height = 20, center = true, convexity =                  10,twist = 0)
                        polygon(points=[[0,0],[62,0],[31,89.5]], paths=[[0                      ,1,2]],convexity=10);
                cylinder(r=6);
            }
            translate([-45,74,-5]) cube([90,50,30]);
        }
    }
    
    //weapon axis hole
    translate([0, 67, 0]) cylinder(r=16.5, h = 21);
    
    //motor hole
    translate([0, 19.5, 0]) cylinder(r=11, h = 21);
    
    translate([-12.5, 2, 0]) cylinder(r=0.5, h = 21);
    translate([-12.5, 4, 0]) cylinder(r=0.5, h = 21);
    translate([-12.5, 6, 0]) cylinder(r=0.5, h = 21);
    translate([-12.5, 8, 0]) cylinder(r=0.5, h = 21);
    translate([-12.5, 10, 0]) cylinder(r=0.5, h = 21);
    
    translate([-12.5, 26, 0]) cylinder(r=0.5, h = 21);
    translate([-12.8, 28, 0]) cylinder(r=0.5, h = 21);
    translate([-13.0, 30, 0]) cylinder(r=0.5, h = 21);
    translate([-13.2, 32, 0]) cylinder(r=0.5, h = 21);
    translate([-13.5, 34, 0]) cylinder(r=0.5, h = 21);
    
    translate([12.5, 2, 0]) cylinder(r=0.5, h = 21);
    translate([12.5, 4, 0]) cylinder(r=0.5, h = 21);
    translate([12.5, 6, 0]) cylinder(r=0.5, h = 21);
    translate([12.5, 8, 0]) cylinder(r=0.5, h = 21);
    translate([12.5, 10, 0]) cylinder(r=0.5, h = 21);
    
    translate([12.5, 26, 0]) cylinder(r=0.5, h = 21);
    translate([12.8, 28, 0]) cylinder(r=0.5, h = 21);
    translate([13.0, 30, 0]) cylinder(r=0.5, h = 21);
    translate([13.2, 32, 0]) cylinder(r=0.5, h = 21);
    translate([13.5, 34, 0]) cylinder(r=0.5, h = 21);
    
    translate([-15.5,0,15]) cube([31,36,20]);
    
    
    //belt space
    translate([-11,20,-9]) rotate([0,0,6]) cube([10,45,22]);
    translate([1,20,-9]) rotate([0,0,-6]) cube([10,45,22]);
    translate([-5,20,-9]) cube([10,45,22]);
    
    translate([21.5,47,20]) rotate([0,0,180])
    linear_extrude(height = 2)
    text(text = "SCRATCH", font = "Arial Rounded MT Bold:style=Regular", size = 6.5);
    
    
}

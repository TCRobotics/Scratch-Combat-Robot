
baseHeight = 3;

baseSide = 80;

trialgleSide = baseSide;
triangleRadius = trialgleSide / sqrt(3);
triangleApothem = trialgleSide * (sqrt(3)/6);
triangleHigh = trialgleSide * (sqrt(3)/2);

weaponRadious = 27;

batteryY = 60;
batteryX = 30;
batteryZ = baseHeight;

motorRadius = 8;
motorLongitude = 45;

rxY = 55;
rxX = 25;
rxZ = baseHeight;

difference()
{
	union()
	{
		translate([triangleApothem,0,0])
			cylinder(baseHeight, r=triangleRadius, $fn=3);		

		translate([triangleHigh,0,0]) 
			cylinder(baseHeight, r=weaponRadious, $fn=20);

		translate([-(baseSide/2)-10,0,baseHeight/2])
			cube([baseSide+20,baseSide+20,baseHeight], center = true);
	}
	//battery
	translate([-(batteryX/2)-25,15,baseHeight/2])
		cube([batteryX,batteryY,batteryZ], center = true);	

	//RX
	translate([-(rxX/2)-56,15,baseHeight/2])
		cube([rxX,rxY,rxZ], center = true);	
}
//motores
translate([-15,5,(motorRadius)+3])
	rotate(a=[-90, 0, 0]) 
		cylinder(motorLongitude, r=motorRadius, $fn=20);
translate([-15,-5,(motorRadius)+3])
	rotate(a=[90, 0, 0]) 
		cylinder(motorLongitude, r=motorRadius, $fn=20);
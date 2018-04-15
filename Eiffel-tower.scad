difference(){
  difference(){
      union(){
      //external pyramid
        polyhedron(
          points=[ [15,15,0],[15,-15,0],[-15,-15,0],[-15,15,0],  [0,0,50]  ],                            
          faces=[ [0,1,4],[1,2,4],[2,3,4],[3,0,4],[1,0,3],[2,1,3] ] );
        //floor
        translate([0,0,14]) cube([24,24,2],center=true);
        
    }
      //inner pyramid
      polyhedron(
        points=[ [10,10,0],[10,-10,0],[-10,-10,0],[-10,10,0],  [0,0,50]  ],                            
        faces=[ [0,1,4],[1,2,4],[2,3,4],[3,0,4],[1,0,3],[2,1,3] ] );
    }
    
  
  rotate([0,90,0]) cylinder (h=80, r=7, center=true);
  rotate([90,0,0]) cylinder (h=80, r=7, center=true);
  translate([0,0,15]) rotate([90,0,0]) rotate([0,0,135]) linear_extrude(height = 35, center = true) polygon([[4,4],[15,-15],[-4,-4]] );
  translate([0,0,15]) rotate([0,0,90]) rotate([90,0,0]) rotate([0,0,135]) linear_extrude(height = 35, center = true) polygon([[4,4],[15,-15],[-4,-4]] );


}

translate([0,0,50]) cube([0.8,0.8,5], center=true);

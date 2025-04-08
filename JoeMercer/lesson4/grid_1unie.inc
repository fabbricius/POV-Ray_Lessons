#include "colors.inc"

/*
camera { 
  location <5,5,-60>
  look_at <0,0,0>
  angle 15
}

light_source{  
  <4, 6, -10>  
  White
} 
*/
// parallel lines with x between x=-50 at x=50
#declare j = -50;
#while(j <= 50)
cylinder {
    <-50,j,0>, <50,j,0>, .02
    pigment{ Grey }
    finish {ambient .4}
    }
#declare j = j + 1;
#end

// parallel lines with y between y=-50 to y=50
#declare k = -50;
#while(k <= 50)
cylinder {
    <k,-50,0>, <k,50,0>, .02
    pigment{ Grey}
    finish {ambient .4}
    }
#declare k = k + 1;
#end

// z axis
cylinder {
    <0,0,-50>, <0,0,50>, .02
    pigment{ Grey}
    finish {ambient .4}
    }

// points on the z-axis
#declare i = -50;
#while(i <= 50)
sphere { <0,0,i> .03 pigment{Black}}
#declare i = i + 1;
#end
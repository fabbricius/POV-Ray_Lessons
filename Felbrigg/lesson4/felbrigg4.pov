#include "colors.inc"
#include "myfirstinclude.inc"
camera {
       location <2,2,-10>
       look_at <0,0,0>
       }
light_source {
       	     <10,10,-10>
       	     color White
       	     }

box {
	<1,1,1>,
        <-1,-1,-1>
	texture {pigment { Blue} }
	rotate <0, -35, 0>
    }
box {
	<1,1,1>,
        <-1,-1,-1>
	texture {pigment { Blue} }
	rotate <0, -120, 0>
	translate <-3,0,0>
    }


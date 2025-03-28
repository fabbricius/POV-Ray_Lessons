#include "colors.inc"
camera {
       location <2,2,-10>
       look_at <0,0,0>
       }
light_source {
       	     <10,10,-10>
       	     color White
       	     }

cylinder {
       <0,100,0>,
       <0,-100,0>,
       0.1
       texture {pigment { Red } }
       }
cylinder {
       <100,0,0>,
       <-100,0,0>,
       0.1
       texture {pigment { Green } }
       }
cylinder {
       <0,0,100>,
       <0,0,-100>,
       0.1
       texture {pigment { Yellow } }
       }
box {
	<1,1,1>,
        <-1,-1,-1>
	texture {pigment { Blue} }
        rotate <10,0,0>
        rotate <0,30,0>
    }


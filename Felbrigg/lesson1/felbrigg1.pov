#include "colors.inc"

camera {
       location <0,0,-10>
       look_at <0,0,0>
       }

light_source {
       	     <10,10,-10>
       	     color White
       	     }
sphere {
       <0,0,0>, 2
       texture { pigment { color Red } }
       }


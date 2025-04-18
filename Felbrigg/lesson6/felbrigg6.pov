#include "colors.inc"
//#include "myfirstinclude.inc"
camera {
       location <2,2,-10>
       look_at <0,0,0>
       }
light_source {
       	     <10,10,-10>
       	     color White
       	     }
light_source {
       	     <-10,10,-10>
       	     color White
       	     }

background { White }
union
{
    union   {
        sphere {<0,0,0> 
                .5 
                scale <1,1,2>
                translate <0,0,.5>
                texture { pigment { White } }
               }
        #declare i = 0;
        #while (i < 360)
            triangle {<0,0,0>,<0,2,0>,<1,2,0> rotate <0,20,0> rotate <0,0,i> texture { pigment { White } }}  
	    #declare i = i + 25;
        #end
        translate <0,0,-2.5>
        }    
    
    torus {
    	    2.1, 0.3  
    	    rotate <90,0,0>
    	    scale <1,1,10>
            texture { pigment { White } }
    	  }
    rotate <0,20,0>
}
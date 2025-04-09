#include "colors.inc"  
//#include "grid_1unie.inc"  
//#include "grid_fullpicdiamond.inc"

camera { 
  //location <5,2,-15>
  //location <5,4,-15>
  location <5,4,-10>
  look_at <.5,.5,0>
  angle 15
}

light_source{  
  <4, 6, -10>  White
  shadowless
}  

sky_sphere {
  pigment {   
    gradient y
    color_map {  
      [0 color White]
      [1 color Blue]
    }
    scale 2
    translate <0, 1, 0>
  }
}

/*
cylinder {
    <.5,0,0>, <.5,1,0>, .5
    open
       pigment {   

        image_map {
         jpeg "testa1.jpg"
         //jpeg "testa2.jpg"
            //map_type 2
            }
                 
        }
    finish {ambient .4}
    scale pi/2
    translate <-1,0,0>
    //rotate <0,180,0>
    //rotate <0,-90,0>   // suite en 8:18
} // end of first cylinderr    
*/

cylinder {
    <0,0,0>, <0,1,0>, .5
    open
       pigment {   

        image_map {
         //jpeg "testa2.jpg"
         jpeg "scene1.jpg"
            map_type 2
            }
                 
        }
    finish {ambient .4}
    //scale <1,pi/2,1>
    //translate <1.3,0,0>
    rotate <0,-90,0>
} // end of cylinder    

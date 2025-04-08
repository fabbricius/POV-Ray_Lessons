#include "colors.inc"  
//#include "grid_1unie.inc"  
//#include "grid_fullpicdiamond.inc"

camera { 
  location <5,2,-20>
  look_at <.5,.5,0>
  angle 15
}

light_source{  
  <4, 6, -10>  
  White
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
// Below part is commented.
// It is not needed anymore when one of the grid.inc file is included.  
/*
cylinder {
  <-5,0,0>, <5,0,0>, .04
  pigment { Grey }
  finish {
    ambient .5
  }
} // end of cylinder   
cylinder {
  <0,-5,0>, <0,5,0>, .04
  pigment { Grey }
  finish {
    ambient .5
  }
} // end of cylinder   
*/

// -=- part with gradient on cube -=-
// commented to try image scaling
/*
box {
    //<0,0,0>, <1,2,1>
    <0,0,0>, <1,1,1>
     //pigment { Red }
       pigment {   
    gradient y
    color_map {  
      [0 color White]
      [.5 color Blue]
      [1 color Red]
    }
    scale cos(radians(20)) + sin (radians(20))
    rotate <0,0,-20>
    }
    finish {ambient .4}
    scale <1,1.5,1>
  //rotate <0,0,30>
} // end of box    
*/


box {
    <0,0,0>, <1,1,1>
       pigment {   
        image_map {
         jpeg "Pov-ray_isotope1_722x1113.jpg"
            }
        }
    finish {ambient .4}
    //scale <1,1,1>
    scale <722,1113,722>/1000
    scale 1.5
} // end of box    

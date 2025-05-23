#include "colors.inc"  

camera { 
  location <0,0,-50>
  look_at <0,0,0>
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
/*
cylinder {
  <0,-2,0>, <0,2,0>, 2
  open
  pigment { Red }
  finish {
    ambient .4 
  }
  rotate <-30,0,0>
  translate <3,0,0>
} // end of cylinder       

box {
  <-1,-2,-1>, <1,2,1>  
  pigment { Red }
  finish {
    ambient .4 
  }
  rotate <-30,20,0>
  translate <-2,0,0>
} // end of box
*/
cone {
  //<0,-2,0>, 3, <0,2,0>, 1
  <0,-2,0>, 3, <0,2,0>, 0
  pigment { Green }
  finish {
    ambient .4 
  }
  rotate <-30,0,0>
  translate <-3,-1,0>
} // end of cone

torus {
  4, 1 
  pigment { Red }
  finish {
    ambient .4 
  }
  rotate <-30,0,0>
  translate <0,2,0>
}
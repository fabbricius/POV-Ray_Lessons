#include "colors.inc"  

camera { 
  location <0,0,-10>
  look_at <0,0,0>
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

sphere { 
  <0,0,0>, 1
  pigment { Red } 
  finish { ambient .4 } 
  // scale 2
  scale <2,1,1>
  rotate <0,0,45>
  translate <2,0,0>  
}


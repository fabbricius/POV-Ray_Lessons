#include "colors.inc"  
camera { 
  location <0,0,-10>
  look_at <0,0,0>
}
               
light_source{  
  <4, 6, -10>  
  White
}
  
//background { Grey }

sky_sphere {
  pigment {   
    gradient y
    color_map {  
      [0 color White]
      [1 color Blue] 
    }
    translate <0, -.5, 0>
  }
}
      
sphere { 
  <-2,0,0>, 2
  pigment { Red } 
  finish { ambient .4 }
}
sphere { 
  <4,0,0>, 1
  pigment { Blue } 
  finish { ambient .4 }
}
sphere { 
  <0,0,0>, 2
  pigment { Yellow } 
  finish { ambient .4 }
}
#include "colors.inc"
#include "grid.inc"
camera { 
  location <1,1,-40>
  look_at <1,1,0>
  angle 15
}

light_source{  
  <20,13,-60>  White
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

sphere {
  <-2,2,0>, .2
  pigment { Red }
  finish { ambient .4 }
}
sphere {
  <0,0,0>, .2
  pigment { Red }
  finish { ambient .4 }
}
sphere {
  <2,0,0>, .2
  pigment { Red }
  finish { ambient .4 }
}
sphere {
  <2,4,0>, .2
  pigment { Red }
  finish { ambient .4 }
}
sphere {
  <0,4,0>, .2
  pigment { Red }
  finish { ambient .4 }
}
sphere {
  <-2,2,0>, .2
  pigment { Red }
  finish { ambient .4 }
}

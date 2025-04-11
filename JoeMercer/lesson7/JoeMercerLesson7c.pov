#include "colors.inc"
#include "grid.inc"
camera { 
  location <1,1,-30>
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

sphere_sweep {
  linear_spline 
  4,
  <-1,0,0>, .2
  <0,0,0>, .2
  <2,0,0>, .4
  <3,0,0>, .4
  pigment { Red }
  finish { ambient .4 }
}

sphere_sweep {
  cubic_spline 
  4,
  <-1,0,0>, .2
  <0,0,0>, .2
  <2,0,0>, .4
  <3,0,0>, .4
  pigment { Red }
  finish { ambient .4 }
  translate <0,1,0>
}

sphere_sweep {
  //linear_spline 
  //cubic_spline 
  b_spline
  4,
  <-1,0,0>, .2
  <0,0,0>, .2
  <2,0,0>, .4
  <3,0,0>, .4
  pigment { Red }
  finish { ambient .4 }
  translate <0,2,0>
}
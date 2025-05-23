#include "colors.inc"
//#include "grid.inc"
camera { 
  location <5,10,-30>
  look_at <.7,2.3,0>
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
union {
  //cup
  cylinder {
    <0,0,0>, <0,4.75,0>, 2 
    pigment { Red }
    finish { ambient .4 }
  } // end cylinder

  //handle
  sphere_sweep {
    b_spline
    7,
    <.7,2.2,0>, .8
    <1.5,.5,0>, .3
    <3.1,.5,0>, .3
    <4,2.4,0>, .3
    <3.1,4.1,0>, .3
    <1.5,4.1,0>, .3
    <.7,2.6,0>, .8
    pigment { Red }
    finish { ambient .4 }
  } // end sphere_sweep
} // end union

// inside cylinder
cylinder {
  <0,.2,0>, <0,4.9,0>, 1.8
  pigment { White }
  finish {ambient .4}
} // end inside cylinder
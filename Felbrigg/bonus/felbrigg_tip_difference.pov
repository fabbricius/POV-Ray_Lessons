#include "colors.inc"
#declare Camera_0 = camera {
  perspective angle 75 // front view
  location <4.0,2.0,-5.0>
  look_at <0.0,1.0,0.0> 
}
camera{Camera_0}
light_source {
       	     <3000,3000,-3000>
       	     color White
       	     }
sky_sphere {
  pigment {
    gradient <0,1,0>
    color_map {
      [0.00 rgb <0.6,0.7,1.0>]
      [0.35 rgb <0.1,0.0,0.8>]
      [0.65 rgb <0.1,0.0,0.8>]
      [1 rgb <0.6,0.7,1.0>]
    }
    scale 2
  }
}
plane { <0,1,0>, -2
  texture { pigment { checker color rgb<1,1,1>*1.2 color rgb<0.25,0.15,0.1>*0}
    finish  { phong 0.1 }
  }
}
difference {
  box {
    <-1.5,-1,-1>,
    <0.5,1,1>
    pigment { Red }
    //pigment { rgbf <1,0,0, .5>}
  }
  cylinder {
    <0.5,0,-1.00001>,
    <0.5,0,1.00001>,
    1
    pigment { Red }
    //pigment { rgbf <1,0,0, .5>}
  }
}

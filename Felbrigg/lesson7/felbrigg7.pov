#include "colors.inc"
#include "myfirstinclude.inc"
camera {
       location <2,2,-10>
       look_at <0,0,0>
       }
light_source {
       	     <10,10,-10>
       	     color White
       	     }

background { White }
plane {
      y, -1
      texture {pigment {White * 2}}
}

union {
  sphere {
    <0,0,0>,1
    translate <-0.5,0,0>
  }
  sphere {
    <0,0,0>,1
    translate <0.5,0,0>
  }
  texture {
    pigment { Blue }
  }
}
difference {
  sphere {
    <0,0,0>,1
    translate <-0.5,0,0>
  }
  sphere {
    <0,0,0>,1
    translate <0.5,0,0>
  }
  translate <-2,0,0>
  texture {
    pigment { Blue }
  }
}

// union vs merge
merge {
  sphere {
    <0,0,0>,1
    translate <-0.5,0,0>
  }
  sphere {
    <0,0,0>,1
    translate <0.5,0,0>
  }
  translate <3,0,0>
  texture {
    pigment { rgbf <0,0,1,.8> }
  }
}

intersection {
  sphere {
    <0,0,0>,1
    translate <-0.5,0,0>
  }
  sphere {
    <0,0,0>,1
    translate <0.5,0,0>
  }
  translate <1,3,0>
  texture {
    pigment { Blue}
  }
}


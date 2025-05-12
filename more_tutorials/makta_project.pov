#include "colors.inc"  
#include "textures.inc"  

camera { 
  location <0.0,1.0,-8.9>
  look_at <0.0,1.5,0.0>
}
light_source {<1500,2500,-1500> color White}

// SKY
plane {
  <0,1,0>,1 hollow
  texture{ pigment{bozo turbulence 0.92
    color_map 
    { 
      [0.00 rgb <0.20,0.20,1.0>*0.9]
      [0.50 rgb <0.20,0.20,1.0>*0.9]
      [0.70 rgb <1,1,1>]
      [0.85 rgb <0.25,0.25,0.25>]
      [1.0 rgb <0.5,0.5,0.5>]
    }
    scale<1,1,1.5>*2.5 translate <0,0,0>
  }
    finish {ambient 1 diffuse 0} }
  scale 10000
}

// FOG
fog { fog_type 2
  distance 150
  color White *0.7
  fog_offset 0.1
  fog_alt 3.5
  turbulence 1.8
}

// SEA
plane {
  <0,1,0>,0
  texture{Polished_Chrome
    normal { crackle 0.15 scale <0.35,0.25,0.25> turbulence 0.5 }
    finish {reflection 0.60}
  }
}

// Blue Sphere
sphere {
  <0, 3.0, 3>, 3
  pigment {
    color rgbf <0,0,1,0>
  }
  finish {
    phong 0.9
    reflection 0.8
  }
}

// Sphere with image
sphere {
  <3, 2, -2>, 0.8
  pigment {
    image_map{
      gif "cavelink.gif"
      map_type 0 
      interpolate 2
    }
    scale 1.5
    rotate <0,45,0>
  }
  finish {
    phong 0.5
    reflection 0.4
  }
  translate <0,0.2,>
}

// LEANING TORUS
torus { 3.5, 0.4
  pigment { color rgbf <0.2 0.5 0.6, 0.8>}
  finish {
    phong 1.0
    reflection 0.5
    refraction 1.2
    ior 1.8
  }
  translate <0.5, 3>
  rotate <0,0,53>
}

// BOX
box {
  <0,3,-5> <1.5,4.5,-3.5>
  translate <2,-2.99,2>
  pigment {
    color rgbf <1,0,1>
  }
  finish {
    phong 0.5
    reflection 0.3}
}

// JACKS
#declare Blade = sphere_sweep {
  linear_spline
  2,
  <-1,0,0>, .5
  <1,0,0>, .1
  pigment {color rgbf <0.5, 0.2, 0.6, 0>}
  finish {
    phong 1.0
    reflection 0.5
    refraction 1.2
    ior 1.8
  }
  translate <-1,2,-2>
}

merge { object {Blade}
  object {Blade
    rotate 90*z
    translate <2,2,0>}
  object {Blade
    rotate -90*z
    translate <-2,2,0>}
  object {Blade
    rotate 270*y
    translate <-2,0,-2>}
  object {Blade
    rotate 180*y
    translate <0,0,-4>}
  object {Blade
    rotate 90*y
    translate <2,0,-2>}
  scale 0.70
  rotate <30,15,45>
  translate <0,0,-2>
}  

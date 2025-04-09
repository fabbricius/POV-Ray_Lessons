#include "colors.inc"  

camera { 
  location <0,0,-10>
  look_at <0,0,0>
  angle 15
}

light_source{  
  <4, 6, -10>  White
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


sphere {  // LEFT sphere
    <.5,.5,0> .5
       pigment {   
        image_map { jpeg "testa1.jpg" }
        }
    finish {ambient .4}
    translate <-.5,-.5,0>  // so it is centered at the origin
    //rotate <-60,0,0>
    translate <-.6,0,0>
} // end of LEFT sphere   


sphere {  // RIGHT sphere
    <0,0,0> .5
       pigment {   
        image_map { jpeg "testa2.jpg" map_type 1 }
        //image_map { jpeg "world2.jpg" map_type 1 }
        }
    finish {ambient .4}
    //rotate <-60,0,0>
    translate <0.6,0,0> // with world2, comment this line
} // end of RIGHT sphere   
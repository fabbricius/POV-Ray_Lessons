#include "colors.inc"
camera { 
  location <6,15,-50>
  look_at <0,.8,0>
  angle 15
}

light_source{  
  <20,15,-60>  White
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

difference {
// surface of revolution
sor {
  10,
  <0,-3.1>
  <1,-3>
  <2,-2.3>
  <3,-1.3>
  <3.8,0>
  <4,1.3>
  <3.5,2>
  <3.2,2.5>
  <3.1,3>
  <3,5>
  
  //scale 1/6
  //translate <0,.5,0>
  pigment {
    //Red
         image_map {
         //jpeg "PotDesign.jpg"
         //jpeg "PotDesign1b.jpg"
         jpeg "PotDesign1c.jpg"
          //map_type 2 // cylindrical
	      map_type 1 // spherical
            }

  }
  finish { ambient 0.5 }
  //translate <0,-.5,0>
  //scale 6
  
} // end of sor

cylinder {
    <0,0,0>, <0,3.1,0>, 3
    //open
       pigment {   White   }
    finish {ambient .4}
} // end of  cylinder    

//rotate <0,30,0>
}// end of difference        TODO suite a la minute 10!
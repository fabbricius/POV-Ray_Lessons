#include "colors.inc"  
#include "textures.inc"  

background {color Turquoise}

camera { 
  location <0,30,40>
  look_at <0,15,0>
}
union
{
  difference
  {
    sphere { 
      <0,0,0>, 5
      scale <0,-2,0>
    }
    sphere { 
      <0,0,0>, 4
      scale <0,-2,0>
      pigment { color Gray } 
    }
    box 
    {
      <-5,6,-5>,
      <5,10,5>
    }
    pigment { color NeonPink }
    translate y*20
  } // end: difference

  cylinder 
  {
    <0,0,0>, // intiial center
    <0,10,0> // final center
    0.5      // radius
    pigment {color NeonPink}
  }
  
  cone
   {
    <0,1,0>, 0 // center and radius of initial circle
     <0,0,0>, 6 // center and radius of final circle
     rotate <-20,0,-1> 
     pigment {color NeonPink}
   }
} // end: union

light_source {<2,4,3> color White}

plane 
{
  <0,1,0>, -2
  pigment {
    color Turquoise
  }
}
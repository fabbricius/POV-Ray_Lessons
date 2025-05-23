#include "colors.inc"
              
camera { 
  location <5,5,-60>
  look_at <0,0,0>
  angle 15
}

light_source{  
  <4, 6, -10>  
  White
} 


cylinder {
    <-5,0,0>, <5,0,0>, .02
    pigment { Grey }
    finish {ambient .4}
    }
   
cylinder {
    <0,-5,0>, <0,5,0>, .02
    pigment{ Grey}
    finish {ambient .4}
    }

cylinder {
    <-5,1,0>, <5,1,0>, .02
    pigment{ Grey}
    finish {ambient .4}
    }

cylinder {
    <-5,2,0>, <5,2,0>, .02
    pigment{ Grey}
    finish {ambient .4}
    }

cylinder {
    <-5,3,0>, <5,3,0>, .02
    pigment{ Grey}
    finish {ambient .4}
    }

cylinder {
    <-5,4,0>, <5,4,0>, .02
    pigment{ Grey}
    finish {ambient .4}
    }

cylinder {
    <-5,-1,0>, <5,-1,0>, .02
    pigment{ Grey}
    finish {ambient .4}
    }

cylinder {
    <-5,-2,0>, <5,-2,0>, .02
    pigment{ Grey}
    finish {ambient .4}
    }

cylinder {
    <-5,-3,0>, <5,-3,0>, .02
    pigment{ Grey}
    finish {ambient .4}
    }

cylinder {
    <-5,-4,0>, <5,-4,0>, .02
    pigment{ Grey}
    finish {ambient .4}
    }

cylinder {
    <1,-5,0>, <1,5,0>, .02
    pigment{ Grey}
    finish {ambient .4}
    }

cylinder {
    <2,-5,0>, <2,5,0>, .02
    pigment{ Grey}
    finish {ambient .4}
    }

cylinder {
    <3,-5,0>, <3,5,0>, .02
    pigment{ Grey}
    finish {ambient .4}
    }

cylinder {
    <4,-5,0>, <4,5,0>, .02
    pigment{ Grey}
    finish {ambient .4}
    }

cylinder {
    <-1,-5,0>, <-1,5,0>, .02
    pigment{ Grey}
    finish {ambient .5}
    }

cylinder {
    <-2,-5,0>, <-2,5,0>, .02
    pigment{ Grey}
    finish {ambient .4}
    }
                        
cylinder {
    <-3,-5,0>, <-3,5,0>, .02
    pigment{ Grey}
    finish {ambient .4}
    }

cylinder {
    <-4,-5,0>, <-4,5,0>, .02
    pigment{ Grey}
    finish {ambient .4}
}
    
cylinder {
    <0,0,-100>, <0,0,100>, .02
    pigment{ Grey}
    finish {ambient .4}
}

sphere {
    <0,0,0> .1
    pigment{Grey}

} 

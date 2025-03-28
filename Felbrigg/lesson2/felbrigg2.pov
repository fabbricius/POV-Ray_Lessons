#include "colors.inc"
camera {
       location <2,2,-10>
       look_at <0,0,0>
       }
light_source {
       	     <10,10,-10>
       	     color White
       	     }
sphere {<0,0,0>, 0.5 texture { pigment { color Green } } }
sphere {<1,0,0>, 0.5 texture { pigment { color Red   } } }
sphere {<2,0,0>, 0.5 texture { pigment { color Red   } } }

sphere {<-1,0,0>, 0.5 texture { pigment { color Blue} } }
sphere {<-2,0,0>, 0.5 texture { pigment { color Blue} } }

sphere {<0,1,0>, 0.5 texture { pigment { color Yellow } } }
sphere {<0,2,0>, 0.5 texture { pigment { color Yellow } } }

sphere {<0,-1,0>, 0.5 texture { pigment { color White } } }
sphere {<0,-2,0>, 0.5 texture { pigment { color White } } }

sphere {<0,0,-1>, 0.5 texture { pigment { color Gray50 } } }
sphere {<0,0,-2>, 0.5 texture { pigment { color Gray50 } } }

sphere {<0,0,1>, 0.5 texture { pigment { color Cyan } } }
sphere {<0,0,20>, 0.5 texture { pigment { color Cyan } } }
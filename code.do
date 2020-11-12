/*
  Author:  Zihui Zhao (Lilac) 
  Task: Stata code is provided for visualizing variable "treatment" across counties in China
*/ 

* county_gis.dta  is the main file for visualizing variable "treatment" in stata data file format
* countycoordinates.dta  contains coordinates of each county in China


clear 

* Change directory
cd "C:\Desktop\lilac_project"  

* Define globle variable data and work
global data  C:\Desktop\lilac_project\data 
global work  C:\Desktop\lilac_project\work 

* Use maile file for visualizing analysis
use "$data/county_gis.dta", replace    

* Visualizing code
spmap treatment using "$data/countycoordinates.dta", id(_ID) fcolor(red orange) ///
 ocolor(black) osize(thin) legend(position(4))  clmethod(unique) ///   
  legtitle("Treatment Dummy") clnumber(8)     ///
  title("Treatment Dummy by Counties in China", size(*0.8))         ///
   legstyle(2) 
 

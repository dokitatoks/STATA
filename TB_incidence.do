set more off

capture log using tbi, replace text

use "C:\Users\oadetokunboh\Desktop\tbi.dta", clear
metaprop incid py, random by (timerange) cimethod (exact) lcols(study country)  xlabel(.001,0.25,0.5)
metafunnel _ES _seES
confunnel _ES _seES,  
metabias _ES _seES, begg

log close
exit
 


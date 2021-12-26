set more off

capture log using tbcfr, replace text

use "C:\Users\oadetokunboh\Desktop\tbcfr.dta", clear
metaprop casefatal total, random by (timerange) cimethod (exact) lcols(study country)  xlabel(.001,0.25,0.5)
metafunnel _ES _seES
confunnel _ES _seES,  
metabias _ES _seES, begg

log close
exit
 


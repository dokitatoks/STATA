set more off

capture log using study1_, replace text

use C:/Users/oadetokunboh/Desktop/study1hvprev, clear
metan  dpt3_hpos nodpt3_hpos dpt3_hneg nodpt3_hneg, or lcols( country ) xlabel(.01,1,5,15) force classic random
metaninf dpt3_hpos nodpt3_hpos dpt3_hneg nodpt3_hneg, or random label(namevar= country)


*metareg hvprev
recode hvpre (min/10.0 = 0 "Low") (10.1/max =1 "High"), gen (hv)             
metan  dpt3_hpos nodpt3_hpos dpt3_hneg nodpt3_hneg, or lcols( country ) xlabel(.01,1,5,15) force classic random by (hv)
gen logOR = log( _ES)
gen  selogOR =   _selogES
metareg logOR hvpre, wsse(selogOR)eform graph



log close
exit


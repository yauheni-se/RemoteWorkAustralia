doedit "C:\Projects\RemoteWorkSurvey\run_research.do" 
* PRESETS
pwd
cd C:\Projects\RemoteWorkSurvey
insheet using "data/remote_productivity.csv", comma clear
describe
codebook
* PLOTS
splitvallabels productivity
catplot gender productivity, percent(productivity) var1opts(label(labsize(small))) var2opts(label(labsize(small)) relabel(`r(relabel)')) ytitle("", size(small)) title("", span size(medium)) blabel(bar, format(%4.1f) size(vsmall)) intensity(25) asyvars plotregion(fcolor(white)) graphregion(fcolor(white))
graph export "C:\Projects\RemoteWorkSurvey\plots\distributions by prod\p1.png", as(png) name("Graph") replace
splitvallabels productivity
catplot occupation productivity, percent(productivity) var1opts(label(labsize(small))) var2opts(label(labsize(small)) relabel(`r(relabel)')) ytitle("", size(small)) title("", span size(medium)) blabel(bar, format(%4.1f) size(vsmall)) intensity(25) asyvars plotregion(fcolor(white)) graphregion(fcolor(white))
splitvallabels productivity
catplot companysize productivity, percent(productivity) var1opts(label(labsize(small))) var2opts(label(labsize(small)) relabel(`r(relabel)')) ytitle("", size(small)) title("", span size(medium)) blabel(bar, format(%4.1f) size(vsmall)) intensity(25) asyvars plotregion(fcolor(white)) graphregion(fcolor(white))
splitvallabels productivity
catplot household productivity, percent(productivity) var1opts(label(labsize(small))) var2opts(label(labsize(small)) relabel(`r(relabel)')) ytitle("", size(small)) title("", span size(medium)) blabel(bar, format(%4.1f) size(vsmall)) intensity(25) asyvars plotregion(fcolor(white)) graphregion(fcolor(white))
splitvallabels productivity
catplot experience productivity, percent(productivity) var1opts(label(labsize(small))) var2opts(label(labsize(small)) relabel(`r(relabel)')) ytitle("", size(small)) title("", span size(medium)) blabel(bar, format(%4.1f) size(vsmall)) intensity(25) asyvars plotregion(fcolor(white)) graphregion(fcolor(white))
splitvallabels productivity
catplot transportation productivity, percent(productivity) var1opts(label(labsize(small))) var2opts(label(labsize(small)) relabel(`r(relabel)')) ytitle("", size(small)) title("", span size(medium)) blabel(bar, format(%4.1f) size(vsmall)) intensity(25) asyvars plotregion(fcolor(white)) graphregion(fcolor(white))
splitvallabels productivity
catplot remote productivity, percent(productivity) var1opts(label(labsize(small))) var2opts(label(labsize(small)) relabel(`r(relabel)')) ytitle("", size(small)) title("", span size(medium)) blabel(bar, format(%4.1f) size(vsmall)) intensity(25) asyvars plotregion(fcolor(white)) graphregion(fcolor(white))
splitvallabels productivity
catplot recommendremote productivity, percent(productivity) var1opts(label(labsize(small))) var2opts(label(labsize(small)) relabel(`r(relabel)')) ytitle("", size(small)) title("", span size(medium)) blabel(bar, format(%4.1f) size(vsmall)) intensity(25) asyvars plotregion(fcolor(white)) graphregion(fcolor(white))
splitvallabels productivity
catplot remotepreffered productivity, percent(productivity) var1opts(label(labsize(small))) var2opts(label(labsize(small)) relabel(`r(relabel)')) ytitle("", size(small)) title("", span size(medium)) blabel(bar, format(%4.1f) size(vsmall)) intensity(25) asyvars plotregion(fcolor(white)) graphregion(fcolor(white))
splitvallabels productivity
catplot sector productivity, percent(productivity) var1opts(label(labsize(small))) var2opts(label(labsize(small)) relabel(`r(relabel)')) ytitle("", size(small)) title("", span size(medium)) blabel(bar, format(%4.1f) size(vsmall)) intensity(25) asyvars plotregion(fcolor(white)) graphregion(fcolor(white))
splitvallabels productivity
catplot companyallowchoice productivity, percent(productivity) var1opts(label(labsize(small))) var2opts(label(labsize(small)) relabel(`r(relabel)')) ytitle("", size(small)) title("", span size(medium)) blabel(bar, format(%4.1f) size(vsmall)) intensity(25) asyvars plotregion(fcolor(white)) graphregion(fcolor(white))
splitvallabels productivity
catplot companycommonremote productivity, percent(productivity) var1opts(label(labsize(small))) var2opts(label(labsize(small)) relabel(`r(relabel)')) ytitle("", size(small)) title("", span size(medium)) blabel(bar, format(%4.1f) size(vsmall)) intensity(25) asyvars plotregion(fcolor(white)) graphregion(fcolor(white))
splitvallabels productivity
catplot companysupportremote productivity, percent(productivity) var1opts(label(labsize(small))) var2opts(label(labsize(small)) relabel(`r(relabel)')) ytitle("", size(small)) title("", span size(medium)) blabel(bar, format(%4.1f) size(vsmall)) intensity(25) asyvars plotregion(fcolor(white)) graphregion(fcolor(white))
splitvallabels productivity
catplot biggestchallenge productivity, percent(productivity) var1opts(label(labsize(small))) var2opts(label(labsize(small)) relabel(`r(relabel)')) ytitle("", size(small)) title("", span size(medium)) blabel(bar, format(%4.1f) size(vsmall)) intensity(25) asyvars plotregion(fcolor(white)) graphregion(fcolor(white))
splitvallabels productivity
catplot biggestbenefit productivity, percent(productivity) var1opts(label(labsize(small))) var2opts(label(labsize(small)) relabel(`r(relabel)')) ytitle("", size(small)) title("", span size(medium)) blabel(bar, format(%4.1f) size(vsmall)) intensity(25) asyvars plotregion(fcolor(white)) graphregion(fcolor(white))
graph box age, over(productivity) plotregion(fcolor(white)) graphregion(fcolor(white))
graph box workinghoursdiff, over(productivity) intensity(25) plotregion(fcolor(white)) graphregion(fcolor(white))
* X-TESTS
tab productivity gender, chi2 V
tab productivity occupation, chi2 V
tab productivity companysize, chi2 V
tab productivity household, chi2 V
tab productivity experience, chi2 V
tab productivity transportation, chi2 V
tab productivity remote, chi2 V
tab productivity recommendremote, chi2 V
tab productivity remotepreffered, chi2 V
tab productivity sector, chi2 V
tab productivity companyallowchoice, chi2 V
tab productivity companycommonremote, chi2 V
tab productivity companysupportremote, chi2 V
tab productivity biggestchallenge, chi2 V
tab productivity biggestbenefit, chi2 V
* ENCODING
encode productivity, generate(y)
encode gender, generate(gendr)
encode occupation, generate(occ)
encode household, generate(hh)
encode experience, generate(exp)
encode remote, generate(rmt)
encode recommendremote, generate(rmtrecommend)
encode remotepreffered, generate(rmtpref)
encode sector, generate(sctr)
encode companycommonremote, generate(rmtcommon)
encode companysupportremote, generate(rmtsupport)
encode biggestchallenge, generate(challenge)
encode biggestbenefit, generate(benefit)
encode companyallowchoice, generate(rmtallowed)
* RECODING
recode y (1=1) (2=3) (3=2), generate(y2)
recode hh (1=0) (2=0) (3=1) (4=0), generate(hh2)
recode hh (1=0) (2=2) (3=1) (4=0), generate(hh3)
recode occ (1=0) (2=0) (3=0) (4=1), generate(occ2)
recode occ (1=0) (2=1) (3=0) (4=0), generate(occ3)
recode occ (1=0) (2=1) (3=0) (4=2), generate(occ4)
recode challenge (1=0) (2=1) (3=0) (4=0) (5=0) (6=2) (7=0) (8=0) (9=0), generate(challenge2)
recode challenge (1=0) (2=0) (3=0) (4=0) (5=0) (6=1) (7=0) (8=0) (9=0), generate(challenge3)
recode challenge (1=0) (2=0) (3=1) (4=0) (5=0) (6=2) (7=0) (8=0) (9=0), generate(challenge4)
recode challenge (1=0) (2=0) (3=0) (4=0) (5=0) (6=1) (7=0) (8=0) (9=0), generate(challenge5)
recode rmtcommon (1=0) (2=0) (3=1), generate(rmtcommon2)
recode rmtrecommend (1=0) (2=0) (3=1), generate(rmtrecommend2)
recode rmtsupport (1=0) (2=0) (3=1), generate(rmtsupport2)
recode rmtallowed (1=0) (2=0) (3=1), generate(rmtallowed2)
recode rmtpref (1=0) (2=1) (3=1) (4=0) (5=2), generate(rmtpref2)
recode rmt (1=0) (2=0) (3=1), generate(rmt2)
recode sctr (1=0) (2=0) (3=1) (4=0), generate(sctr2)
recode exp (1=0) (2=1) (3=0), generate(exp2)
recode benefit (1=0) (2=1) (3=0) (4=2) (5=0) (6=3), generate(benefit2)
* X-TESTS EXTENDED
tab productivity occ3, chi2 V
tab productivity occ4, chi2 V
tab productivity hh2, chi2 V
tab productivity hh3, chi2 V
tab productivity exp2, chi2 V
tab productivity rmtallowed2, chi2 V
* CLEANING
rename occ3 ismanager
drop gender occupation companysize household experience transportation remote recommendremote remotepreffered productivity sector companyallowchoice companycommonremote companysupportremote personalhoursdiff domestichoursdiff commutehoursdiff biggestbenefit biggestchallenge y occ occ2 occ4 rmtallowed rmtallowed2 hh hh2
rename hh3 household2
rename exp2 isnew
cls
* NUM TESTS
histogram age
swilk age
histogram workinghoursdiff
kwallis age, by(y2)
kwallis workinghoursdiff, by(y2)
rename y2 y
drop age
cls
* MULTICOLLINEARITY
tab y rmtcommon, chi2 V
tab y rmtcommon2, chi2 V
tab y rmtsupport, chi2 V
tab y rmtsupport2, chi2 V
tab y rmtpref, chi2 V
tab y rmtpref2, chi2 V
tab y rmtrecommend, chi2 V
tab y rmtrecommend2, chi2 V
tab y rmt, chi2 V
tab y rmt2, chi2 V
* REGROUPING PREFERENCES
label define ynlabel 0 "no" 1 "yes"
label values rmtsupport2 ynlabel
label define rmtlabel 0 "onsite" 1 "hybrid" 2 "remote"
label values rmtpref2 rmtlabel
label values rmtrecommend2 ynlabel
label define rmt2label 0 "hybrid" 1 "remote"
label values rmt2 rmt2label
drop rmt rmtcommon2 rmtpref rmtrecommend rmtsupport
cls
* EXAMING THEIR CORRELATIONS
tab rmtsupport2 rmtcommon, chi2 V
tab rmtpref2 rmt2, chi2 V
rename rmt2 rmt
rename rmtpref2 rmtpref
rename rmtrecommend2 rmtrecommend
rename rmtsupport2 rmtsupport
rename household2 household
tab gendr ismanager, chi2 V
tab gendr household, chi2 V
tab gendr isnew, chi2 V
tab y sctr, chi2 V
tab y sctr2, chi2 V
tab y challenge, chi2 V
tab y challenge2, chi2 V
tab y challenge3, chi2 V
tab y challenge4, chi2 V
tab y challenge5, chi2 V
* FEATURE SELECTION
ologit y workinghoursdiff
ologit y workinghoursdiff i.gendr
ologit y workinghoursdiff i.gendr i.sctr
ologit y workinghoursdiff i.gendr i.rmtcommon
ologit y workinghoursdiff i.gendr i.challenge
ologit y workinghoursdiff i.gendr i.benefit
ologit y workinghoursdiff i.gendr i.household
ologit y workinghoursdiff i.gendr i.ismanager
ologit y workinghoursdiff i.gendr i.rmtrecommend
ologit y workinghoursdiff i.gendr i.rmtrecommend i.rmtsupport
ologit y workinghoursdiff i.gendr i.rmtrecommend i.rmtcommon
ologit y workinghoursdiff i.gendr i.rmtrecommend i.rmtpref
ologit y workinghoursdiff i.gendr i.rmtrecommend i.rmtpref i.rmt
drop exp2 
drop exp 
ologit y workinghoursdiff i.gendr i.rmtrecommend i.rmtpref i.sctr
ologit y workinghoursdiff i.gendr i.rmtrecommend i.rmtpref i.sctr2
ologit y workinghoursdiff i.gendr i.rmtrecommend i.rmtpref i.isnew
* FEATURE PREP AFTER FEATURE SEL
codebook sctr
rename sctr2 isquaternary
label values isquaternary ynlabel
drop sctr
drop rmtsupport isnew ismanager
codebook challenge
drop challenge2 challenge3 challenge4 challenge5
recode challenge (1=0) (2=0) (3=1) (4=0) (5=0) (6=2) (7=0) (8=0) (9=0), generate(challenge2)
recode challenge (1=0) (2=0) (3=1) (4=0) (5=0) (6=0) (7=0) (8=0) (9=0), generate(challenge3)
recode challenge (1=0) (2=0) (3=0) (4=0) (5=0) (6=1) (7=0) (8=0) (9=0), generate(challenge4)
codebook household
recode household (1=0) (2=1) (3=0), generate(ishhcomplex)
codebook rmtcommon
recode rmtcommon (1=0) (2=0) (3=1), generate(rmtcommon2)
drop benefit2
codebook benefit
recode benefit (1=0) (2=1) (3=0) (4=2) (5=0) (6=3), generate(benefit2)
recode benefit (1=0) (2=1) (3=0) (4=0) (5=0) (6=0), generate(benefit3)
recode benefit (1=0) (2=0) (3=0) (4=1) (5=0) (6=0), generate(benefit4)
recode benefit (1=0) (2=0) (3=0) (4=0) (5=0) (6=1), generate(benefit5)
recode benefit (1=0) (2=1) (3=0) (4=2) (5=0) (6=0), generate(benefit6)
recode benefit (1=0) (2=0) (3=0) (4=1) (5=0) (6=2), generate(benefit7)
recode benefit (1=0) (2=1) (3=0) (4=0) (5=0) (6=2), generate(benefit8)
* NEW FEATURE SELECTION FOR QUESTIONED VARS
ologit y workinghoursdiff i.gendr i.rmtrecommend i.rmtpref i.isquaternary
ologit y workinghoursdiff i.gendr i.rmtrecommend i.rmtpref i.challenge2
ologit y workinghoursdiff i.gendr i.rmtrecommend i.rmtpref i.challenge3
ologit y workinghoursdiff i.gendr i.rmtrecommend i.rmtpref i.challenge4
ologit y workinghoursdiff i.gendr i.rmtrecommend i.rmtpref i.challenge4 i.ishhcomplex
ologit y workinghoursdiff i.gendr i.rmtrecommend i.rmtpref i.challenge4 i.rmtcommon2
ologit y workinghoursdiff i.gendr i.rmtrecommend i.rmtpref i.challenge4 i.benefit2
ologit y workinghoursdiff i.gendr i.rmtrecommend i.rmtpref i.challenge4 i.benefit3
ologit y workinghoursdiff i.gendr i.rmtrecommend i.rmtpref i.challenge4 i.benefit4
ologit y workinghoursdiff i.gendr i.rmtrecommend i.rmtpref i.challenge4 i.benefit5
ologit y workinghoursdiff i.gendr i.rmtrecommend i.rmtpref i.challenge4 i.benefit6
ologit y workinghoursdiff i.gendr i.rmtrecommend i.rmtpref i.challenge4 i.benefit7
ologit y workinghoursdiff i.gendr i.rmtrecommend i.rmtpref i.challenge4 i.benefit8
ologit y workinghoursdiff i.gendr i.rmtrecommend i.rmtpref i.challenge4 i.benefit2
drop rmtcommon rmtcommon2 rmt household challenge challenge2 challenge3 ishhcomplex rmtcommon2 benefit benefit3 benefit4 benefit5 benefit6 benefit7 benefit8 id
rename benefit2 benefit
rename challenge4 islackmotivation
label values islackmotivation ynlabel
label define bnftlabel 0 "other" 1 "less expences" 2 "work-life balance"
label values benefit bnftlabel
ologit y workinghoursdiff i.gendr i.rmtrecommend i.rmtpref i.islackmotivation i.benefit
label define bnftlabel 0 "other" 1 "less expences" 2 "professional" 3 "work-life balance"
label define bnftlabel2 0 "other" 1 "less expences" 2 "professional" 3 "work-life balance"
label values benefit bnftlabel2
ologit y workinghoursdiff i.gendr i.rmtrecommend i.rmtpref i.islackmotivation i.benefit
recode benefit (0=0) (1=1) (2=2) (3=2), generate(benefit2)
ologit y workinghoursdiff i.gendr i.rmtrecommend i.rmtpref i.islackmotivation i.benefit2
codebook benefit
codebook benefit2
label define bnftlabel3 0 "other" 1 "less expences" 2 "professional or work-life balance"
label values benefit2 bnftlabel3
drop benefit
rename benefit2 benefit
tab y isquaternary, chi2 V
ologit y workinghoursdiff i.rmtrecommend i.rmtpref i.islackmotivation i.benefit i.isquaternary
drop gendr
codebook
cls
* TESTING
ologit y workinghoursdiff i.rmtrecommend i.rmtpref i.islackmotivation i.benefit i.isquaternary
brant, detail
ologit y workinghoursdiff i.rmtrecommend i.rmtpref i.islackmotivation i.benefit i.isquaternary
est store logit_ordered
gologit2 y workinghoursdiff i.rmtrecommend i.rmtpref i.islackmotivation i.benefit i.isquaternary, npl lrf store(logit_generelized)
gologit2 y workinghoursdiff i.rmtrecommend i.rmtpref i.islackmotivation i.benefit i.isquaternary, auto lrf store(logit_partial)
lrtest logit_ordered logit_generelized, force
lrtest logit_ordered logit_partial, force
lrtest logit_generelized logit_partial, force
* MEASURING PERFORMANCE
label define ylbl 1 "dropped" 2 "same level" 3 "increased"
label values y ylbl
gologit2 y workinghoursdiff i.rmtrecommend i.rmtpref i.islackmotivation i.benefit i.isquaternary, auto lrf store(logit_partial)
gologit2 y workinghoursdiff i.rmtrecommend i.rmtpref i.islackmotivation i.benefit i.isquaternary, auto lrf
predict p1 p2 p3, pr
gen y_pred1 = (p1 > 0.5 & p2 <= 0.5 & p3 <= 0.5)
gen y_pred2 = (p2 > 0.5 & p3 <= 0.5)
gen y_pred3 = (p3 > 0.5)
gen y_actual1 = (y == 1)
gen y_actual2 = (y == 2)
gen y_actual3 = (y == 3)
tab y_actual1 y_pred1
tab y_actual1 y_pred2
tab y_actual1 y_pred3
tab y_actual2 y_pred1
tab y_actual2 y_pred2
tab y_actual2 y_pred3
tab y_actual3 y_pred1
tab y_actual3 y_pred2
tab y_actual3 y_pred3
codebook y
drop p1 p2 p3 
gologit2 y workinghoursdiff i.rmtrecommend i.rmtpref i.islackmotivation i.benefit i.isquaternary, auto lrf
predict p1 p2 p3, pr
codebook p1
save "C:\Projects\RemoteWorkSurvey\ytyt.dta"
generate pred = .
replace pred = 1 if newvar == 1
replace pred = 2 if newvar2 == 1 & newvar != 1
replace pred = 3 if pred == .
tab pred y

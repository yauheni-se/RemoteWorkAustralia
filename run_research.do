pwd
cd C:\Projects\RemoteWorkSurvey
log using "log_file", text
pwd
insheet using "data/remote_productivity.csv", comma clear
describe
codebook
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
oneway age productivity , tabulate
histogram age
swilk age
kwallis age, by(productivity)
kwallis workinghoursdiff, by(productivity)
kwallis personalhoursdiff, by(productivity)
kwallis domestichoursdiff, by(productivity)
kwallis commutehoursdiff, by(productivity)

# Description
Research based on a survey conducted in 2020 in Australia. The goal of the research is to study factors associated with remote work productivity experienced during COVID-19 pandemic and to measure the strength of this association.

# Content
- data - folder containing raw data file as well as cleaned data file after preprocessing in R
- data_preparation.Rmd - data preparation process prepared in markdown
- analysis.R - initial analysis procedure stored as R script
- run_research.do - modeling and testing procedure stored as STATA script
- roc_curves.R - R script building roc curves for multiclass classification model
- Research.pdf - main file containing full research description

# Methodology
Final estimates were achieved by feature selection based on Chi-square test and Cramer-V statistics, and partial proportional odds model.

# Findings
In general, it can be said that people who:

- Work in the tertiary sector (IT, engineers, scientists, etc.)
- Were satisfied with remote job,
- Prefer to stay remote,
- Worked more,

have increased their productivity during COVID-19 pandemic. Social-demographic variables, though, like sex, household size, etc. did not have any sufficient influence on productivity. The most strongly correlated feature is satisfaction with remote work.

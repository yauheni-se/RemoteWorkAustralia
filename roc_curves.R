setwd("C:/Projects/RemoteWorkSurvey")
library(tidyverse)
library(pROC)
df <- haven::read_dta("data/from_stata.dta")
df

tmp <- df %>% 
  mutate(
  actual = as.numeric(y),
  pred = ifelse(newvar==1, 1, ifelse(newvar2==1, 2, 3)),
  .keep = "none"
)
tmp

table(tmp$actual, tmp$pred) %>% 
caret::confusionMatrix(tmp$pred %>% as.factor(), tmp$actual %>% as.factor())


roc.multi <- pROC::multiclass.roc(tmp$pred, tmp$actual)
roc.multi
rs <- roc.multi[['rocs']]
plot.roc(rs[[1]])
sapply(2:length(rs),function(i) lines.roc(rs[[i]],col=i))

pROC::roc(tmp$pred, tmp$actual, levels = c(1, 2))$auc
pROC::roc(tmp$pred, tmp$actual, levels = c(2, 3))$auc
pROC::roc(tmp$pred, tmp$actual, levels = c(1, 3))$auc
setwd("C:/Projects/data_save/RemoteWorkSurvey-main/")
library(tidyverse)
library(plotly)
library(shiny)
library(DT)

df <- read_csv("data/remote_productivity.csv")
df %>% colnames()


var <- "BiggestBenefit"
df %>% 
  group_by_at(c("Productivity", var)) %>% 
  summarise(n =n()) %>% 
  left_join(df %>% group_by(Productivity) %>% summarise(n_total = n()), by = "Productivity") %>% 
  mutate(perc = round(n/n_total, 4)*100) %>% 
  plot_ly(x =~perc, y =~Productivity, color = .[[var]], type = "bar", colors = "Blues") %>% 
  layout(bargap = 0.1)

df %>% 
  group_by_at(c("Productivity", var)) %>% 
  summarise(n =n()) %>% 
  ungroup() %>% 
  left_join(df %>% group_by(Productivity) %>% summarise(n_total = n()), by = "Productivity") %>% 
  mutate(perc = round(n/n_total, 4)*100)


# less females with 'dropped'
# less managers with 'same level'
# CompanySize - almost unimportant
# less couples with 'dropped', less other with 'increased'
# more between 6 and 123 months with dropped
# transportation - almost unimportant
# more hybrid with dropped, more almost onsite with dropped, less dropped with remote
# less people recommending remote if their productivity dropped - obvious
# those whose productivity dropped wants onsite more often;
# secondary sector: either increased or dropped, no same level
# CompanyAllowChoice: almost not important
# CompanyCommonRemote: more people for whom productivity dropped claims company was not prepared for remote - CompanyCommonRemote;
# CompanySupportRemote - smaller prop of people claiming company does not support remote for whom produtivity icnreased
# for whom productivity dropped, the most popular challenge is motivation and collaboration (compared to other categories)

# for whom prodcutivity dropped names mainly less expenses a their main benefit; 
# also people for whom prodcutivity increased more ofthen than others mention well-being and relationships

df %>% colnames()

var <- 'CommuteHoursDiff'
subplot(
  df %>% filter(Productivity == "Same level") %>% plot_ly(x =.[[var]], type = "histogram", name = "Same level", nbinsx = 30) %>% layout(bargap = 0.1),
  df %>% filter(Productivity == "Increased") %>% plot_ly(x =.[[var]], type = "histogram", name = "Increased", nbinsx = 30) %>% layout(bargap = 0.1),
  df %>% filter(Productivity == "Dropped") %>% plot_ly(x =.[[var]], type = "histogram", name = "Dropped", nbinsx = 30) %>% layout(bargap = 0.1),
  nrows = 3
)
# seems that productivity was bigger for those who works more
# PersonalHoursDiff - no difference
# DomesticHoursDiff - no difference
# CommuteHoursDiff - no difference


var <- 'WorkingHoursDiff'
subplot(
  df %>% filter(Productivity == "Same level") %>% filter(across(var, ~ . > 0)) %>% 
    plot_ly(x =.[[var]], type = "histogram", name = "Same level", nbinsx = 30) %>% layout(bargap = 0.1),
  df %>% filter(Productivity == "Increased") %>% filter(across(var, ~ . > 0)) %>% 
    plot_ly(x =.[[var]], type = "histogram", name = "Increased", nbinsx = 30) %>% layout(bargap = 0.1),
  df %>% filter(Productivity == "Dropped") %>% filter(across(var, ~ . > 0)) %>% 
    plot_ly(x =.[[var]], type = "histogram", name = "Dropped", nbinsx = 30) %>% layout(bargap = 0.1),
  nrows = 3
)
# Age - no difference
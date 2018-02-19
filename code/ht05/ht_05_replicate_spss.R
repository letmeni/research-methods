# load required packages

library(tidyverse)
library(texreg)
library(lmtest)

# load dataset
dataset <- read_sav("data/ht_05/Norris.sav")

# run correlations
dataset %>% 
  select(GDP2002, FM_Lit2002, F_Work2002, SDI) %>% 
  cor(use = "pairwise.complete")

# run regression
lm1 <- lm(GDP2002 ~ FM_Lit2002 + F_Work2002 + SDI, 
          data = dataset)

# show regression model
screenreg(lm1)

# display plots for regression assumptions
plot(lm1)

# conduct DW test
dwtest(lm1)

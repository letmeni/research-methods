
lm(mpg ~ hp, data = mtcars)

library(tidyverse)
ggplot(data = mtcars, aes(x = hp, y = mpg)) +
  geom_point(size = 3, alpha = 0.6) +
  geom_smooth(method = "lm") + 
  labs(x = "Horsepower", y = "Miles per gallon") +
  theme_bw()
ggsave("plots/reg_example.pdf", width = 5, height = 3)  

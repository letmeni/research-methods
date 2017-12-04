df <- data.frame(
  x = c(1, 2, 4, 5),
  y = c(1, 3, 5, 7)
)

library(tidyverse)

ggplot(df, aes(x = x, y = y)) +
  geom_point(size = 3) + 
  geom_smooth(method = "lm", se = FALSE) +
  theme_bw()

ggsave("plots/mt_08_correlation.pdf", width = 4, height = 4)

cor(df$x, df$y)

covariance <- ((1-3) * (1-4) + 
                 (2-3) * (3-4) + 
                 (4-3) * (5-4) + 
                 (5-3) * (7-4)) / (4-1)

covariance / (1.83 * 2.58)

0.98 * sqrt(4-2) / sqrt(1-0.98^2)

dta <- read.csv("/Users/stefan/Downloads/2014_CHES_dataset_means.csv")


library(tidyverse)

theme_set(theme_bw())

ggplot(dta, aes(x = lrgen)) +
  geom_histogram(colour = "black", fill = "grey50")
ggsave("plots/mt04_plot01.pdf", width = 5, height = 3)

ggplot(dta, aes(x = lrgen)) +
  geom_density(colour = "black")
ggsave("plots/mt04_plot02.pdf", width = 5, height = 3)

ggplot(dta, aes(x = lrgen, y = eu_position)) +
  geom_point(alpha = 0.8) + 
  labs(x = "Left-right", y = "EU")
ggsave("plots/mt04_plot03a.pdf", width = 5, height = 3)

ggplot(dta, aes(x = lrgen, y = eu_position)) +
  geom_point(alpha = 0.8) + 
  geom_smooth() + 
  labs(x = "Left-right", y = "EU")
ggsave("plots/mt04_plot03b.pdf", width = 5, height = 3)


library(ggrepel)
dta %>% filter(cname == "ire") %>% 
  ggplot(aes(x = lrgen, y = eu_position)) +
  geom_point() + 
  geom_text_repel(aes(label = party_name)) + 
  labs(x = "Left-right", y = "EU")
ggsave("plots/mt04_plot04.pdf", width = 5, height = 3)



summary(dta$eu_position)

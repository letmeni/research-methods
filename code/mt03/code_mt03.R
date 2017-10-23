library(tidyverse)

theme_slides <- function(base_size = 12){
  theme_minimal() +
    theme(
      axis.text = element_text(colour="black"),
      strip.text = element_text(size=12),
      axis.ticks = element_line(colour = "black"),
      legend.key=element_rect(colour=NA, fill =NA),
      panel.border = element_rect(fill = NA, colour = "grey70", size = 0.7)
    )
}

ggplot2::theme_set(theme_slides())
library(tidyverse)

dta <- read.csv("/Users/stefan/Desktop/prices_dublin.csv") %>% 
  mutate(price = round(price, 0))


heights <- data.frame(
  height = rnorm(1000000, 170, 1)
)

ggplot(data = heights, aes(x = height)) + 
  geom_density(size = 1.3) +
  geom_vline(xintercept = 170, colour = "red") + 
  geom_vline(xintercept = 170 - 1.96 * (10/sqrt(30))) + 
  geom_vline(xintercept = 170 + 1.96 * (10/sqrt(30))) +
  theme_bw()

sd(heights$height)

ggplot(dta, aes(x = price)) +
  geom_density(aes(colour = area))

set.seed(1)

south <- data.frame(
  price = rnorm(1000, 600, 100),
  area = 2)

north <- data.frame(
  price = rnorm(1000, 550, 100),
  area = 1)


dta <- bind_rows(north, south) %>% 
  mutate(price = round(price))


haven::write_sav(dta, "data/mt_03/dublin_rent_simulated.sav")

t.test(dta$price ~ dta$area)

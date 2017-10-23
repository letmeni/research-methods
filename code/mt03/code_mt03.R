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

set.seed(1)

south <- data.frame(
  price = rnorm(1000, 600, 100),
  area = 2)

north <- data.frame(
  price = rnorm(1000, 550, 100),
  area = 1)


dta <- bind_rows(north, south) %>% 
  mutate(price = round(price))

write.csv(dta, "data/mt_03/dublin_rent_simulated.csv",
            fileEncoding = "utf-8",
          row.names = FALSE)

t.test(dta$price ~ dta$area)

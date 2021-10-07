
library('tidyverse')
library('ggplot2')
setwd('C:\\Users\\aidan\\OneDrive\\Desktop\\Sports_Analytics_Club')
whockeydata <- read_csv("Clean PWHPA Secret Dream Gap Tour - SportLogiq - PWHPA Secret Dream Gap Tour.csv")

ggplot(whockeydata, aes(x = successful_stretch_pass_attempts, y = rush_chances)) +
  geom_count()

rush_v_stretch <- ggplot(whockeydata, aes(x = successful_stretch_pass_attempts, y = rush_chances)) +
  geom_count()

rush_v_stretch2 <- rush_v_stretch + 
  labs(title = "Successful Stretch Pass Attempts vs Number of Rush Chances",
       subtitle = "National Women's Hockey League 2021",
       caption = "Viz by Aidan Carlson ~ Data from SportLogiq",
       x = "Number of Rush Chances",
       y = "Number of Successful Stretch Pass Attempts") +
  theme(legend.title = element_blank())


print(rush_v_stretch2)

  
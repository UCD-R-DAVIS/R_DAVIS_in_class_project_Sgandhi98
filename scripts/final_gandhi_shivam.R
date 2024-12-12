library(tidyverse)
library(lubridate)
surveys <- read_csv("https://raw.githubusercontent.com/UCD-R-DAVIS/R-DAVIS/refs/heads/main/data/tyler_activity_laps_12-6.csv") #loading in default items 
running_laps <- surveys %>% #Filter the running
  filter(sport == 'running') %>%
  filter(total_elapsed_time_s >= 60) %>%
  filter(minutes_per_mile < 10 & minutes_per_mile > 5) %>%
  mutate(
    date = ymd(paste(year, month, day, sep = "-")),  #Creates ymd with - as a separation. For somereason, Paste0 wasn't working? 
    time_period = case_when(
      date < ymd('2024-01-01') ~ 'pre-2024',
      date >= ymd('2024-01-01') & date < ymd('2024-07-01') ~ 'rehab Jan-Jun 2024',
      date >= ymd('2024-07-01') ~ 'post-July 2024' #Create three time periods 
    )
  )
names(running_laps)

pre_2024 <- running_laps %>% 
  filter(time_period == 'pre-2024')

head(pre_2024$date) #check that it filtered like I wanted. 

library(ggplot2)
ggplot(running_laps, aes(x = minutes_per_mile, y = steps_per_minute, color = time_period)) +
  geom_point(alpha = 0.7, size = 2) + #Point size and transparency
  geom_smooth(method = "lm", se = FALSE) + #Linear Trendline
  scale_color_viridis_d() + #Colorblind friendly colors 
  labs(
    title = "Strides-per-Minute (SPM) vs speed",
    x = "Speed",
    y = "SPM (Strides per Minute)",
    color = "Time Period"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    axis.title = element_text(size = 14),
    axis.text = element_text(size = 12)
  ) #Relationship breaksdown as Tyler gets tired




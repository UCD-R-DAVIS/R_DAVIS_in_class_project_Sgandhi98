library(tidyverse)
url <- 'https://raw.githubusercontent.com/ucd-cepb/R-DAVIS/refs/heads/main/data/tyler_activity_laps_10-24.csv'
df <- read_csv(url)
df %>% 
  filter(sport == 'running') %>% 
  filter(minutes_per_mile <= 10 & minutes_per_mile >= 5 & total_elapsed_time >60)
  #or filter(sport == 'running', minutes_per_mile <= 10 & minutes_per_mile >= 5)
  mutate(pace = case_when(minutes_per_mile < 6 ~ 'fast',
                            minutes_per_mile >=6 & minutes_per_mile <= 8 ~ 'medium',
                            minutes_per_mile >8 ~ 'slow'))
  mutate(form = ifelse(year == 2024,'new','old')) %>% #minutes_per_mile still not being read
    group_by(pace,form) %>% 
    summarize(mean_steps = mean(steps_per_minute)) %>% 
    pivot_wider(id_cols = 'form',names_from = 'pace',values_from = 'mean_steps')
  
  
library(tidyverse)
url <- 'https://raw.githubusercontent.com/ucd-cepb/R-DAVIS/refs/heads/main/data/tyler_activity_laps_10-24.csv'
lap_tyler <- read_csv(url) #calls in url
lap_tyler #just to check it pulled correct
running_only <- lap_tyler %>% 
  filter(sport == 'running') %>% #filters out to be only running
  filter(minutes_per_mile <= 10.0 & minutes_per_mile > 5.0) #gets us inbetween 10 and 5 minute miles

running_only %>% 
  mutate(pace = case_when(
    minutes_per_mile < 6.0 ~ 'fast',
    minutes_per_mile < 8.0 & minutes_per_mile > 6.0 ~ 'medium',
    is.na(minutes_per_mile) ~ NA_character_,
    TRUE ~ 'slow'
  )) #trying to make new categories, dont think it is working :(

  
running_only %>% 
  mutate(form = case_when(
    year >= 2024 ~ 'new',
    TRUE ~ 'old' #trying to create new catgeories... 
  ))

running_only  
summarise(running_only) #I don't think its working? 
summarise(running_only$pace)

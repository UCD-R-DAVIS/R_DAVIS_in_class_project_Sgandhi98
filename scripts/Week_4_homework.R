library(tidyverse)
surveys <- read_csv("data/portal_data_joined.csv")
surveys
surveys %>% 
  filter(weight > 30 & weight < 60) #or can use weight %in% 30:60
biggest_critters <- surveys %>% 
  filter(!is.na(weight)) %>% 
  group_by(species_id, sex) %>% 
  summarise(max_weight = max(weight)) #can use mutate as well, but sumarize works better
biggest_critters %>% arrange(max_weight)
biggest_critters %>% arrange(desc(max_weight))
surveys %>% 
  filter(is.na(weight)) %>% 
  group_by(species) %>% 
  tally() %>% 
  arrange(desc(n))
surveys %>% 
  filter(is.na(weight)) %>% 
  group_by(plot_id) %>% 
  tally() %>% 
  arrange(desc(n))
surveys %>% 
  filter(is.na(weight)) %>% #filters to let us see which rows are NA. Filters FOR NA.
  group_by(year) %>% 
  tally() %>% #can use tally() to see them better. then use arrange (-n) to show highest number. 
  arrange(desc(n))
surveys_avg_weight <- surveys %>% 
  filter(!is.na(weight)) %>%  
  group_by(species_id, sex) %>% 
  mutate(avg_weight = mean(weight)) %>% #mutate adds new column
  select(species_id, sex, weight, avg_weight)

surveys_avg_weight
surveys_avg_weight <- surveys_avg_weight %>% 
  mutate(above_average = weight > avg_weight) 

surveys_avg_weight

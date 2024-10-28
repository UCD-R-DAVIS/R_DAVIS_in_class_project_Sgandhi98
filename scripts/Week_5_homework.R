library(tidyverse)
surveys <- read_csv("data/portal_data_joined.csv")
surveys_wide <- surveys %>% #New DF
  filter(!is.na(hindfoot_length)) %>% #Filter out na from hindfoot_length
  group_by(genus, plot_id) %>% #sorts into genus and plot type columns
  summarise(mean_hindfoot = mean(hindfoot_length)) %>% #gets us mean hindfoot length
  pivot_wider(names_from = 'plot_id',
              values_from = 'mean_hindfoot') 

  summary(surveys$weight)
  
  surveys %>% 
    mutate(weight_cat = case_when(hindfoot_length >= 48.00 ~ "large", #case when attempt
                                  hindfoot_length > 20.00 ~ "medium",
                                  is.na(hindfoot_length) ~ NA_character_, 
                                  TRUE ~ "small"))

  surveys %>%
    mutate(weight_cat = ifelse(weight  <= 20.00, "small", #ifelse attempt
                                ifelse(weight > 20.00 & weight < 48.00, "medium","large"))) 
           
           
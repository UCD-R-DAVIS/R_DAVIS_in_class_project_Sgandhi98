#Use join functions to merge rows of two data frames when the columns matchup, i.e two columns says record_id, so it will merge both. innerjoin will specifically match rows. Left join uses all rows in "x" and find the matches in "y" and merge the matches to what already exists in left. Use ?join for more help

library(tidyverse)
tail <- read_csv('data/tail_length.csv')
surveys <- read_csv('data/portal_data_joined.csv')

dim(tail)
dim(surveys)    
head(tail)

surveys_inner <- inner_join(x = surveys, y = tail)
dim(surveys_inner)
head(surveys_inner)

all(surveys$record_id %in% tail$record_id)
all(tail$record_id %in% surveys$record_id)

surveys_left <- left_join(x = surveys, y = tail)
dim(surveys_left)
surveys_right <- right_join(x = surveys, y = tail)
dim(surveys_right)

surveys_full <- full_join(x = surveys, y = tail)
dim(surveys_full)

left_join(surveys, tail %>% select(-record_id)) #Trying to join two things that has nothing in common, so R rejects it


#Pivots is for going from data manipulation to visualization in tables.

surveys_mz <- surveys %>% 
  filter(!is.na(weight)) %>% 
  group_by(genus, plot_id) %>% 
  summarize(mean_weight = mean(weight))

surveys_mz %>%  
  pivot_wider(id_cols = 'genus',
              names_from = 'plot_id',
              values_from = 'mean_weight')

?read.csv
surveys <- read.csv("data/portal_data_joined.csv") #Pulls data from github
nrow(surveys)
ncol(surveys)
dim(surveys)

str(surveys) #structure command

class(surveys)

summary(surveys)
surveys
#test
head(surveys)
tail(surveys)
head(surveys, n = 3)
summary.data.frame(surveys)

surveys[1,5] #First row, 5th column
head(surveys, 1)

#first 5 rows
surveys[1:5,] #leaving it blank gives you all the rows for the 5 columns

surveys[ ,1] #every number from first column of surveys
surveys[ ,1:5] #only first 5 columns
dim(surveys[1])
head(surveys, 1)

colnames(surveys) #Column names
surveys[c('record_id','year','day')]

head(surveys) #shows you specified rows at the top of your data
head(surveys, n = 5) #specifically showing first 5 rows

tail(surveys) #shows bottom few rows

head(surveys["genus"])
head(surveys[["genus"]]) #shows like a vector double bracket moves it from data frame level to vector level
head(surveys[["genus", "species"]])

surveys$genus
surveys$hindfoot_length

install.packages('tidyverse')
library(tidyverse)

t_surveys <- read_csv('data/portal_data_joined.csv')
class(t_surveys)
t_surveys

#working directory and file paths
getwd()
"/Users/shivamgandhi/Documents/R-Davis/R_DAVIS_in_class_project_Sgandhi98"

#Each backslash is a different level in folder
setwd()



d <- read.csv("./data/tail_length.csv")
#This is how to pull data from a directory

#dir.create("./lectures")
#dir.create("./scripts")

# Add hashtag after using, so they don't get rerun



#How R thinks about data

## Vectors ---
weight_g <- c(50,60,65,82)

animals <- c("mouse", "rat", "dog")
animals

# Inspection
length(weight_g)
str(weight_g)
weight_g1

### Inspection ----
#^ is how you set headers


### Change Vectors ----
weight_g <- c(weight_g, 90)
weight_g
#This is how we add to the older vector

### Challenge ----

num_char <- c(1, 2, 3, "a") #chooses lowest common demoninator
# vectors have to be the SAME class of values
num_logical <- c(1, 2, 3, TRUE)
# coerces values to be all the same, e.g. when TRUE is included 
char_logical <- c("a", "b", "c", TRUE)
tricky <- c(1, 2, 3, "4")
num_char

#Each vector has to have all numbers or all characters, cannot mix

num_logical <- c(1, 2, 3, TRUE)
char_logical <- c("a", "b", "c", TRUE)
combined_logical <- c(num_logical, char_logical)

### subsetting ----
animals <- c("mouse", "rat", "dog", "cat")
animals[2]
animals[c(2,3)]

# indexing: take items from a vector and create a new combination of values

### Conditional subsetting ----
weight_g <- c(21, 34, 39, 54, 55)
weight_g > 50
weight_g[weight_g > 50] #To be more specific

## Symbols
#%in% 
# == pairwise matching -- ORDER MATTERS 
animals %in% c("rat", "cat", "dog", "duck", "goat")
animals == c("rat", "cat", "dog", "duck", "goat")

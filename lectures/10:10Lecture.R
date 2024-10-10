###Lists
c(4, 6, "dog")
list(4, 6, "dog")
###Each value is now its own Vector. 
a <- list(4, 6, "dog")
class(a)
str(a)

#Data.frames
#Most common data in R, picky version of list
letters
data.frame(letters)
###Converted all letters into column of data
df <- data.frame(letters)
df
length(df) #length of data
dim(df) #dimensions rows, columns
nrow(df) #Number of rows
ncol(df) #number of columns

### Arrays and matrixes in the video for class ---

#factors 

animals <- factor(c("duck", "duck", "goose", "goose"))
animals

class(animals)
levels(animals)
nlevels(animals)

animals <- factor(x = animals, levels = c("goose", "duck") )
animals

year <- factor(c(1978, 1980, 1934, 1979))
year
class(year)
as.numeric(year) #Convert it to numeric
levels(year)

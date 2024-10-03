3 + 4

2 * 5

4 + 8 * 3 ^ 2   

#This is a comment

#Scientific notation
2/100000
4e3

#mathematical functions
exp(1)

exp(3)

log(4)

sqrt(4)

#r heko fukes
?log
log(2, 4)
log(4, 2)
log (x = 2, base = 4)
log (base = 4, x = 2)

x <- 1
x
#don't use variables like x that you might use in functions
rm(x)

#nested functions
sqrt(exp(4))
log(exp(100))


#six comparison functions
mynumber <- 6
mynumber == 5
#asking r if mynumber = 5, have to use double == sign. Single = sign is another way of assigning variables

#use TAB to autocomplete longer variables

mynumber

mynumber != 5
#Logic negation, asking if my number is not equal to five

mynumber > 4
mynumber < 3 
mynumber >= 2
#to write less than or greater or equal to, >= or <=

mynumber <- 7
#can overwrite at anytime

othernumber <- -3

mynumber * othernumber

#object name convections
numSample <- 50
num_samples <- 40

rm(num_samples)

#rm to remove a function/variable

#Use rm(list = ls()) to remove all list files

#errors and warnings

log("a_word")

log_of_word <- log("a_word")
log_of_word

ls(log_of_word)

log_of_negative <- log(-2)
log_of_negative
#NaN now exists as "not a number" but the script did run through warning will only come through once

#challenge 
elephant1_kg <- 3492 
elephant2_lb <- 7757
#always good to keep unit kg or lb in name otherwise you won't know

elephant1_lb <- elephant1_kg * 2.2
elephant2_lb > elephant1_lb

myelephants <- c(elephant1_lb, elephant2_lb)

which(myelephants == max(myelephants))

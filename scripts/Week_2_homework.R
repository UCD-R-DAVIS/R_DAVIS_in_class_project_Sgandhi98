set.seed(15)
hw2 <- runif(50, 4, 50)
hw2 <- replace(hw2, c(4,12,22,27), NA)
hw2
?remove
?is
prob1 <- hw2[!is.na(hw2)] #removed the na arguments ! means is not whatever value is that comes after
#Can also use hw2[complete.cases(hw2)]
prob1
times3 <- prob1 * 3
times3
plus10 <- times3 + 10
plus10
prob1 <- prob1[prob1 >14 & prob1 <38] #Forgot to set between 14 and 38
times3 <- prob1 * 3 #Multiplies by 3
times3 #test
plus10 <- times3 + 10 #Added 10
plus10 #test
final <- plus10[c(TRUE, FALSE, TRUE, FALSE)] #Every other number is true false, so it keeps first number and ignores second
final  #test

#How to combine vectors -> cbind(hw2, hw2, hw2 + hw2)
#cbind(hw2, plus10, hw2 + plus10)
#mean(hw2, na.rm = TRUE)

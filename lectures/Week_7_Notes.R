library(tidyverse)
library(ggplot2)

ggplot(diamonds, aes(x= carat, y= price)) +
  geom_point()
#Dot plot of price on carat

ggplot(diamonds, aes(x= carat, y= price)) +
  geom_point(color= 'blue')
ggplot(diamonds, aes(x= carat, y= price, color = clarity)) +
  geom_point(alpha = .2)

#remove backgrounds, redundant labels, borders.

#clean up the plot
ggplot(diamonds, aes(x= carat, y= price, color = clarity)) +
  geom_point(alpha = .2) + theme_classic() #Theme makes it clean

#Keep viz simple with clear message, start axes at zero

ggplot(diamonds, aes(x= carat, y= price, color = clarity)) +
  geom_point(alpha = .2) + theme_classic() +
  ggtitle("Price by Diamond Quality") + ylab("price in $")

#Add linear regression trends

ggplot(diamonds, aes(x= carat, y= price, color = clarity)) +
  geom_point(alpha = .2) + theme_classic() +
  ggtitle("Price by Diamond Quality") + ylab("price in $") +
  stat_smooth(method = "lm")

#LOESS trendcurves
ggplot(diamonds, aes(x= carat, y= price, color = clarity)) +
  geom_point(alpha = .2) + theme_classic() +
  ggtitle("Price by Diamond Quality") + ylab("price in $") +
  stat_smooth(method = "loess")

#Color palette choices and color-blind friendly viz

  
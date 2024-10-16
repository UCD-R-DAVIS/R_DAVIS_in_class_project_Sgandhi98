surveys <- read.csv("data/portal_data_joined.csv")
surveys
surveys_base <- surveys[1:5000]
surveys_base <- surveys[1:5000, c(6, 9, 13)]
surveys_base
surveys_base$species_id <- factor(surveys_base$species_id)
surveys_base$plot_type <- factor(surveys_base$plot_type)
surveys_base #Species_id and plot_id now factors
surveys_base <- surveys_base[!is.na(surveys_base)] #removed NAs
surveys_base

challenge_base <- surveys_base[surveys_base[, 2]>150,]
#Retrying order? 
surveys <- read.csv("data/portal_data_joined.csv")
surveys
surveys_base <- surveys[1:5000, c(6, 9, 13)]
surveys_base
surveys_base <- surveys_base[!is.na(surveys_base)] #removed NAs
surveys_base
surveys_base$species_id <- factor(surveys_base$species_id)
surveys_base$plot_type <- factor(surveys_base$plot_type)
surveys_base
challenge_base <- surveys_base[surveys_base[,2]>150,]


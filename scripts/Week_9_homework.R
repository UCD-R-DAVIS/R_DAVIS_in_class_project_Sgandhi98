library(tidyverse)
surveys <- read.csv("data/portal_data_joined.csv")

# Get unique taxa
taxa <- unique(surveys$taxon)

# Find the longest species name for each taxon
for (taxon in taxa) { #Could write for(i in unique(surveys$taxa))
  subset <- surveys[surveys$taxon == taxon, ] #myspecies <- unique(mytaxon$species)
  longest_species <- subset$species[which.max(nchar(subset$species))]
  cat("Taxon:", taxon, "- Longest Species Name:", longest_species, "\n")
}

mloa <- read_csv("https://raw.githubusercontent.com/ucd-cepb/R-DAVIS/master/data/mauna_loa_met_2001_minute.csv")
mycols <- mloa %>% select("windDir","windSpeed_m_s","baro_hPa","temp_C_2m","temp_C_10m","temp_C_towertop","rel_humid", "precip_intens_mm_hr")
mycols %>% map(max, na.rm = T)

# Define the function
C_to_F <- function(temp_C) {
  temp_F <- temp_C * 1.8 + 32
  return(temp_F)
}

# Apply the function to create new columns
mloa <- mloa %>%
  mutate(
    temp_F_2m = C_to_F(temp_C_2m),
    temp_F_10m = C_to_F(temp_C_10m),
    temp_F_towertop = C_to_F(temp_C_towertop)
  )

#Bonus using map_df

newmloa <- mloa %>% select("temp_C_2m",
                           "temp_c_10m",
                           "temp_C_towertop") %>% 
  map_df(., C_to_F) %>% rename("temp_F_2m" = "temp_C_2m",
                               "temp_F_10m" = "temp_C_10m",
                               "temp_F_towertop" = "temp_C_towertop") %>% 
  bind_cols(mloa)



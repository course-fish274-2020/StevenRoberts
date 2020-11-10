# Running through exercises Week 7 

fish_data <- read.csv("data/Gaeta_etal_CLC_data.csv")


library(dplyr)

fish_data_cat <- fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))


#Use dplyr to remove the fish with a scalelength of less than 1 mm from fish_data_cat. The new dataset will have 4,029 rows.



fish_data_cat_clean <- filter(fish_data_cat, scalelength  > 1)

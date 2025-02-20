## Practice subsetting data
# use a combination of filter, select, mutate, arrange, summarise, group_by, sample, and/or slice
# create a visulaization using your new subset of data
library(dplyr)
filtered <- filter(songs, popularity > 30)
filtered
arrange(starwars, height)
arrange(starwars, desc(height))
select(starwars, contains("color"))
select(starwars, ends_with("color"))
select(starwars, contains("_"))
select(starwars, starts_with("s"), ends_with("color"))
mutate(starwars_small, 
       height_m = height/100, 
       bmi = mass/(height_m^2))

# to only keep new columns, use transmute
transmute(starwars_small, 
          height_m = height/100, 
          bmi = mass/(height_m^2))
species_masses <- starwars %>%
  group_by(species) %>%
  summarise(mean_mass = mean(mass, na.rm = T),
            count = n()) %>%
  arrange(desc(mean_mass))
summarise(starwars, mean_mass = mean(mass, na.rm = T))
starwars %>% 
  group_by(gender) %>%
  sample_n(4)
slice_min(starwars, order_by = height, n = 10) #rows with lowest 10 masses
slice_max(starwars, order_by = mass, n = 10) #rows with highest 10 masses 

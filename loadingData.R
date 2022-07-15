#### Load in csv file  ####
songs <- read.csv("data/songs_normalize.csv")
View(songs)
saveRDS(songs, "data/songs.RDS")
## Plots
library(ggplot2)
ggplot(data = songs, aes(x = danceability, y = popularity)) + geom_point()


ggplot(data = songs, aes(x = duration_ms, y = popularity)) + geom_point()

ggplot(data = songs, aes(x = acousticness, y = popularity)) + geom_count()


ggplot(data = songs, aes(x = explicit, y = popularity)) + geom_violin() + geom_point() + geom_boxplot()

ggplot(data = songs, aes(x = energy, y = popularity)) + geom_point()
head(songs)

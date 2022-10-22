library(tidyverse)

# using the readr package
vignette("readr")
wine <- read_csv("winequality-red.csv")
wine

# exploring tibbles
vignette("tibble")
wine[1,]      # view only row 1 content (all variables for 1)
wine[,1]      # view only column 1 content (fixed acidity variable)
wine[,12]

# using dplyr package
vignette("dplyr")
select(wine, chlorides, alcohol, quality)     # only views select columns 

# using ggplot package 
ggplot(wine, aes(`pH`, `alcohol`, color = quality)) + geom_point()
ggplot(wine, aes(`free sulfur dioxide`, `total sulfur dioxide`, color = quality)) + geom_point()
ggplot(wine, aes(`fixed acidity`, `volatile acidity`, color = alcohol)) + geom_point()
ggplot(wine, aes(`citric acid`, `residual sugar`, color = alcohol)) + geom_point()
ggplot(wine, aes(fill = `fixed acidity`, y = `volatile acidity`, x = `quality`)) + geom_bar(position = "stack", stat = "identity") + ggtitle("wine quality by acidity")
ggplot(wine, aes(x = `quality`)) + geom_histogram()
ggplot(wine, aes(y = `pH`)) + geom_histogram()
# you can tell i enjoyed experimenting with ggplot()!
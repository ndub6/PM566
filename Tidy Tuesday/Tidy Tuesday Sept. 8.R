ufc_athletes <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2026/2026-07-07/ufc_athletes.csv')
ufc_fights <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2026/2026-07-07/ufc_fights.csv')
ufc_rankings_dataset <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2026/2026-07-07/ufc_rankings_dataset.csv')
ufcstats_data <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2026/2026-07-07/ufcstats_data.csv')
ultimate_ufc_dataset <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2026/2026-07-07/ultimate_ufc_dataset.csv')

head(ultimate_ufc_dataset)

layout(matrix(1:2))
hist(ultimate_ufc_dataset$r_odds)
hist(ultimate_ufc_dataset$b_odds)

layout(1)

ultimate_ufc_dataset<- ultimate_ufc_dataset[ultimate_ufc_dataset$winner %in% c('Red', 'Blue')]

plot(ultimate_ufc_dataset$r_odds ~ ultimate_ufc_dataset$winner)

barplot(table(ultimate_ufc_dataset$winner))

plot(ultimate_ufc_dataset$r_odds  , ultimate_ufc_dataset$winner == 'Red')

l <- loess(ultimate_ufc_dataset$winner == 'Red'~ ultimate_ufc_dataset$r_odds)
ord <- order(l$x)
lines(l$x[ord], l$fitted[ord], lwd = 2, col=2)


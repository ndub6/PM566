# first r script in new Git repo
# Using R
# Option 1: tidytuesdayR R package 
install.packages("tidytuesdayR")

tuesdata <- tidytuesdayR::tt_load('2026-09-01')


world_castles <- tuesdata$world_castles

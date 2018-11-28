library(tidyverse)
library(dplyr)
samples <- tibble(files = Sys.glob("/Users/Manasee Weerathunga/OneDrive/Documents/Vollenhovia/Vol-new/Codes and data/data/*.txt"))  %>% separate(files, into = c(NA,NA,NA,NA,NA,NA,NA,NA,NA, "name"), sep = "/", remove = F)
summaries <- list()
for (i in 1:nrow(samples)) {
  sample <- gsub(".txt", "", samples[i,"name"])
  summaries[[sample]] <- read_table(as.character(samples[i, "files"]), skip = 3, col_types = "cc-c-c")
}
summaries


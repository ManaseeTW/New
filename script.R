library(tidyverse)
samples <- tibble(files = Sys.glob("/Users/Manasee Weerathunga/OneDrive/Documents/Vollenhovia/Vol-new/*.txt")) %>% separate(files, into = c(NA, "name", NA), sep = "/", remove = F)
samples
summaries <- list()
for (i in 1:nrow(samples)) {
  summaries[[i]] <- read_table(as.character(samples[i, "files"]), skip = 3, col_types = "cc-c-")
}
summaries
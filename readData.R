library(tidyverse)

# reference         25°C  0min
# mild heat shock   37°C  10min 30min
# severe heat shock 42°C  10min 30min

# reference/wildtype
# KO: hsf1
# KO: msn2/4
# KO: hsf1 and msn2/4

# 3 samples of each condition

complex_yeast_heatshock <- read_tsv("complex_yeast_heatshock.tsv")
sample_mapping <- read_tsv("sample_mapping.tsv")
flat_file <- read_tsv("yeastract2019-flat-file.tsv", col_names = F)
names(flat_file) <- c("Regulator_systematic", "Regulator_standard",
                      "Target_systematic", "Target_standard",
                      "Id", "Date", "Environment", "Regulation", "Type", "Method")

# analysis/graphics like msmb chp. 13
# what q would you like to do?

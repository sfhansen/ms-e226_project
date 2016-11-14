library(tidyverse)
file_in <- "../data/house_data.csv"

# Read in data 
df <- read_csv(file_in)

# Split data into 70% train, 30% test
percent_in_train <- 0.8
set.seed(1234)
train_indicies <- sample(nrow(df), size = percent_in_train*nrow(df))
train <- df[train_indicies, ]
test <- df[-train_indicies, ]

# Write files to CSV
write_csv(train, "../data/train.csv")
write_csv(test, "../data/test.csv")
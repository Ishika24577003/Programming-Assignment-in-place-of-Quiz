
library(tidyverse)

args <- commandArgs(trailingOnly = TRUE)
list_file <- args[1]

file_list <- readLines(list_file)
merged_data <- NULL

for (file in file_list) {
  if (!file.exists(file)) {
    stop(paste("Error: File", file, "does not exist. Please check the path."))
  }
  
  current_data <- read.table(file, header = TRUE, sep = "\t", stringsAsFactors = FALSE)
  
  colnames(current_data)[1] <- "key"
  
  
  if (is.null(merged_data)) {
    merged_data <- current_data  
  } else {
    merged_data <- inner_join(merged_data, current_data, by = "key")  
  }
}
write.table(merged_data, stdout(), sep = "\t", row.names = FALSE, col.names = TRUE, quote = FALSE)

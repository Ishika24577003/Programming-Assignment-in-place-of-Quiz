
library(ggplot2)

args <- commandArgs(trailingOnly = TRUE)
output_file <- args[1]
x_label <- args[2]
y_label <- args[3]
plot_title <- args[4]


data <- read.table(file('stdin'), header = FALSE, sep = "\t")
colnames(data) <- c("X", "Y", "Category")  # Assign column names


custom_colors <- c("Cl6" = "blue", "Cl1" = "red" , "Cl2" = "green" , "Cl3" = "yellow", "Cl4" = "orange" , "Cl5" = "brown" )  

ggplot(data, aes(x = X, y = Y, color = Category)) +
  geom_line() +
  labs(x = x_label, y = y_label, title = plot_title) +
  scale_color_manual(values = custom_colors) +  # Apply custom colors
  theme_minimal() -> p

# Save the plot to a file
ggsave(output_file, plot = p, width = 10, height = 6)

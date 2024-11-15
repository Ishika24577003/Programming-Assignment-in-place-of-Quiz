# Programming-Assignment-in-place-of-Quiz
# Q1.Select_lines  
   Read Patterns from the Query File Open the query file data/to_select.tsv in read mode ('r') using the open function.
   Read the file line by line using a for loop or the readlines method.
   Strip each line of whitespace characters using the strip method.
   Add each stripped line to a set or list data structure to allow for efficient lookups Read the Data File Open the compressed data file data/q1_data.tsv.gz in read mode ('r') using the 
   gzip module.
   Use the readline method to read the file line by line, which allows us to handle large files without loading the entire file into memory. Process Each Line Print the matching lines to 
   standard output using the print function
# Q2.Plot_lines 
    Library Import: 
       The script begins by importing the ggplot2 library for data visualization.
    Command-Line Arguments: 
       It retrieves command-line arguments for the output file name, x-axis label, y-axis label, and plot title.
    Data Reading:
      The script reads tab-separated data from standard input, assigning column names "X", "Y", and "Category" to the dataset.
    Custom Colors:
      A custom color palette is defined for different categories in the data.
    Plot Creation:
      A line plot is created using ggplot2, mapping the x-axis to "X", the y-axis to "Y", and color to "Category".
      The plot includes custom labels and applies the defined color scheme.   
   Saving the Plot: 
      Finally, the plot is saved to the specified output file in a specified size using the ggsave function.
   

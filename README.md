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
      library imports 
       the script begins by importing the ggplot2 library for data visualization.
       command- line arg 
       It retrives command-line args for the output  file name , x-axis label, y-axis label , and the plot tittle.
       data reading:
      The scripts reads tab seperated data from  stdin , later assigning column names  "X', "Y", and "Category" to the dataset.
    custom color:
      A custom color pallette is defined  for different categories in the data .
    plot creation:
      line plot was generated using ggplot2 , mapping the x axis to "X", the y- axis to "Y", and color to "Category". 
   Saving the plot: 
      saves plot using "ggsave" function in .png.

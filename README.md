# Programming-Assignment-in-place-of-Quiz
# Q1.Select_lines  
   Read Patterns from the Query File Open the query file data/to_select.tsv in read mode ('r') using the open function.
   Read the file line by line using a for loop or the readlines method.
   Strip each line of whitespace characters using the strip method.
   Add each stripped line to a set or list data structure to allow for efficient lookups Read the Data File Open the compressed data file data/q1_data.tsv.gz in read mode ('r') using the 
   gzip module.
   Use the readline method to read the file line by line, which allows us to handle large files without loading the entire file into memory. Process Each Line Print the matching lines to 
   standard output using the print function

# Q2.plot_lines 
importing the 'ggplot2' libaray for data visualization command line arguments for the output file name , x-axis label , and plot tittle 
data reading the scripts basically reads the tsv files from stdin , assigning column names X, Y and category to the dataset.custom color palette is defined.plot is created mapping x-axis to X, y-axis to Y and color to catergory. saves plot using "ggsave" function in .png.

# Q3.merged lines 
  

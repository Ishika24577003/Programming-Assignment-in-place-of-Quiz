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
The script begins by loading the tidyverse library, which provides functions for data manipulation and visualization.It retrieves command line arguments, specifically the first argument which is expected to be the path to a file that contains a list of other data file paths.The script reads the list of file paths from the specified file.A variable merged_data is initialized to store the merged data as it processes each file.The script iterates over each file path in the list.For each file, it checks if the file exists. If not, it stops execution and outputs an error message.If the file exists, it reads the data into a data frame (current_data), treating the first row as headers and specifying tab as the separator.The first column of current_data is renamed to "key".If merged_data is still NULL (i.e., the first file being processed), it assigns current_data to merged_data. For subsequent files, it performs an inner join on merged_data and current_data using the "key" column, effectively merging the datasets based on this common key.Finally, the merged data is written to standard output (console) as a tab-separated file, including column names and without row names or quotes around the values.

# Q4. quantiles 
 Python script reads a list of numbers from standard input and groups them into specified quantiles. It expects a single command-line argument that indicates the number of quantiles to create. After reading the numbers, it converts them into a Pandas DataFrame and uses the qcut function to assign each number to a quantile category. It also determines the corresponding intervals for these quantiles. Finally, it prints each number along with its quantile label and the interval it falls into, formatted neatly for easy reading.


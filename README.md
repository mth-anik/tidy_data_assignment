# tidy_data_assignment
Cousera cleaning data assignment which involves making a tidy data set from raw data files

loading the 'dplyr' library  

### Reading the files
using read.table() , load the X_test.txt, y_test.txt, X_train.txt, y_train.txt, features.txt into xtest, ytest, xtrain, ytrain, feature.name data frames  

### Combining the datasets and naming the columns
using rbind() , clip the xtest and xtrain together into xcomb  
using rbind() , clip the ytest and ytrain together into ycomb  
using colnames() , rename the columns of xcomb with the names stored in feature.name  
using colnames() , rename the column of ycomb with 'Activity names'  

### Extracting measurements of mean() and std() of each measurements columns
using grep() , find the column indices of those column that contains mean and standard deviation measurements  
create x_extract dataframe with only the columns that contains mean and standard deviation measurements  

### Assigning descriptive activity names
run a loop which replaces integers in ycomb data frame with appropriate activity name  

### Creating tidy data set
using cbind(), combine ycomb and x_extract along the columns. it makes the tidy data set with appropriate labels and descriptive variable names  

### Creating second data set
using tbl_df() , convert tidy_data of data frame format into tidy_data_tbl of table data format  
using group_by() , group the tidy_data_tbl with 'Activity names' as the reference  
using summarise_all() , calculate mean of all columns of each group  
create a text file named 'summary_data.txt' which contains the final_data  
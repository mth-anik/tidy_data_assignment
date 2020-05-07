### Reading the files
**xtest** : contains dataset from X_test.txt  
**ytest** : contains dataset from y_test.txt  
**xtrain** : contains dataset from  X_train.txt  
**ytrain** : contains dataset from  y_train.txt  
**feature.name** : contains dataset from features.txt  

### Combining the datasets and naming the columns
**xcomb** : contains the dataset from xtest and xtrain  
**ycomb** : contains the dataset from ytest and ytrain  

### Extracting measurements of mean() and std() of each measurements columns
**col_ind** : contains the column indices of those column which contains mean and standard deviation measurements  
**x_extracted** : a data frame with the columns containig  mean and standard deviation measurements  

### Creating tidy data set
**tidy_data** : a data set with appropriate labels and descriptive variable names  

### Creating second data set
**tidy_data_tbl** : a data frame table with same contents as the tidy_data  
**grp_data** : tidy_data_tbl grouped according to the values of 'Activity names'  
**final_data** : second, independent tidy data set with the average of each variable for each activity and each subject  
You have to download source data from the link below and unzip it to working directory of R Studio.
You have to perform R script.

## About source data
The source data to be analysed was used for Human Activity Recognition Using Smartphones Data Set. A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## About R script
File with R script "run_analysis.R" perform 5 following steps (in accordance assigned to the task of course work):

### [1] Merging the training and the test sets to create one data set.
1. Reading files
 * Reading from training and tests tables
 * Reading feature vector and activity labels
2. Assigning column names
3. Merging all data in one set

### [2] Extracting only the measurements on the mean and standard deviation for each measurement
1. Reading column names
2. Create vector for defining ID, mean and standard deviation
3. Making nessesary subset from setAllInOne

### [3] Using descriptive activity names to name the activities in the data set
Using *activityId* to describe the activities in the data set.

### [4] Appropriately labeling the data set with descriptive variable names
Labeling the data set with proper variables.
* *x_train*, *y_train*, *x_test*, *y_test*, *subject_train* and *subject_test* contain the data from the downloaded files.
* *x_data*, *y_data* and *subject_data* merged from the previous datasets to make ready for data to be analysed.
* *features* contains the correct *names* for the *x_data* dataset, which are applied to the column *names* stored in.

### [5] Creating a second, independent tidy data set with the average of each variable for each activity and each subject
1. Making second tidy data set
2. Writing second tidy data set in .txt file

*PS: The code takes for granted all the data is present in the same folder, un-compressed and without names altered.*

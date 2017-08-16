## CodeBook
This document consists the steps to perform on data preparation and resulting readily data and variables for analysis. You have to perform R script "run_analysis.R". The script performs:

### Creating directory, downloading and unzipping source data files
General setup have been included in the R script for collecting data from source.

Link for *fileUrl*:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### [1] Merging the training and the test sets to create one data set
1. Reading files from .txt files
 * Reading from training and tests tables
 * Reading feature vector and activity labels
2. Assigning column names
3. Merging all data in one set

### [2] Extracting only the measurements on the Mean and Standard Deviation for each measurement
1. Reading column *names*
2. Create vector for defining ID, Mean and Standard Deviation (mean_and_std)
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

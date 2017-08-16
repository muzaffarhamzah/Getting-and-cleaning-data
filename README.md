## Getting-and-Cleaning-Data v2
You have to perform R script "run.analysis.R". General setup such as creating directory, downloading, unzipping data files have been included in the script. This script requires packages "plyr". You may install using the command below

install.packages("plyr")

### About source data
The source data to be analysed was used for Human Activity Recognition Using Smartphones Data Set. A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project (URL):
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### About R script
File with R script "run_analysis.R" perform 5 following steps (in accordance assigned to the task of course work):
1. Merging the training and the test sets to create one data set
2. Extracting only the measurements on the mean and standard deviation for each measurement
3. Using descriptive activity names to name the activities in the data set
4. Appropriately labeling the data set with descriptive variable names
5. Creating a second, independent tidy data set with the average of each variable for each activity and each subject

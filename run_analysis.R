library (plyr)

# Check and create directory
if(!file.exists("./data")) {
	dir.create("./data")
}

# Getting the data zip file and unzipping to directory
fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/dataset.zip")

if(!file.exists("UCI HAR Dataset")) {
	unzip(zipfile="./data/Dataset.zip",exdir="./data")
}

# Loading the training and test sets from the dataset .txt files
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

# Reading features vector and activity labels
features <- read.table('./data/UCI HAR Dataset/features.txt')
activityLabels <- read.table('./data/UCI HAR Dataset/activity_labels.txt')

# Creating column names for each variables from both set and assign defining ID
colnames(x_train) <- features[,2] 
colnames(y_train) <-"activityId"
colnames(subject_train) <- "subjectId"
      
colnames(x_test) <- features[,2] 
colnames(y_test) <- "activityId"
colnames(subject_test) <- "subjectId"
      
colnames(activityLabels) <- c('activityId','activityType')

# Merging all obtained data into a set with bind
mrg_train <- cbind(y_train, subject_train, x_train)
mrg_test <- cbind(y_test, subject_test, x_test)

setAllInOne <- rbind(mrg_train, mrg_test)

# Extracts the measurements on Mean and Standard Deviation for each measurements
colNames <- colnames(setAllInOne)

mean_and_std <- (grepl("activityId" , colNames)| 
                 grepl("subjectId" , colNames)| 
                 grepl("mean.." , colNames)| 
                 grepl("std.." , colNames) 
                 )
                 
setForMeanAndStd <- setAllInOne[ , mean_and_std == TRUE]

# Labeling the merged dataset with proper labels by activities
setWithActivityNames <- merge(setForMeanAndStd, activityLabels,
                              by='activityId',
                              all.x=TRUE)

# Creating second independent tidy set with average of each variable for activity and subject                              
secTidySet <- aggregate(. ~subjectId + activityId, setWithActivityNames, mean)
secTidySet <- secTidySet[order(secTidySet$subjectId, secTidySet$activityId),]

write.table(secTidySet, "secTidySet.txt", row.name=FALSE)

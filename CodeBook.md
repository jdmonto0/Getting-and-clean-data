# CodeBook

This is a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data.

## Data source

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained: 

1.	Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2.	Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## The data

The dataset includes the following files:

1.	`README.txt`
2.	`features_info.txt`: Shows information about the variables used on the feature vector.
3.	`features.txt`: List of all features.
4.	`activity_labels.txt`: Links the class labels with their activity name.
5.	`train/X_train.txt`: Training set.
6.	`train/y_train.txt`: Training labels.
7.	`train/subject_train.txt`: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
8.	`test/X_test.txt`: Test set.
9.	`test/y_test.txt`: Test labels.
10.	`test/subject_test.txt`: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.


## Transformation details

There are 5 steps:

1.	Merges the training and the test sets to create one data set.
2.	Extracts only the measurements on the mean and standard deviation for each measurement.
3.	Uses descriptive activity names to name the activities in the data set
4.	Appropriately labels the data set with descriptive activity names.
5.	Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## `run_analysis.R` implements the above steps as follow:

1.	Load both test and train data
2.	Load the features and activity labels.
3.	Extract the mean and standard deviation column names and data.
4.	Process the data. There are two parts processing test and train data respectively.
5.	Merge data set.

NOTE: the code doesn't requiere to load extra libraries 








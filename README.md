# datasciencecoursera
---
title: "README"

---

The Source of the data or Run_Analysis.r files is based on
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


#1.Merges the training and the test sets to create one data set.#
The zip file above was downloaded and unzipped
The train files below were merged first using cbind as the common factor between them was the same amount of rows
X_train.txt
y_train.txt
subject_train.txt
The Subject and Activity column names were renamed from V1 and V2 as these would be the common factors between the merged train and test files.

The test files below were merged next
X_test.txt
y_test.txt
subject_test.txt

The combined train and test files were merged using rbind as they contained the same amount of columns

#2.Extracts only the measurements on the mean and standard deviation for each measurement.#

Firstly, the column names were relabelled  from  features.txt to make it easier to search for mean() and std()
secondly, created a list of column names containing mean() and std() contatenated to the "Subject" and "Activity" columns.
This list was used to create a subset of the data using the function subset


#3.Uses descriptive activity names to name the activities in the data set#

used a for loop to loop all rows of dataset, checking the Activity column value'==' the activity id ( 1,2,3,4,5,6) and re-assigning the label of the activity to the activity value instead of the ID


#4.Appropriately labels the data set with descriptive variable names.#
Relabelled some of the column names with more appropriate names using gsub
e.g. t =  time

#5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.#
Used aggregate function to get the average value of variables based on subject and activity combined. The data is then ordered by you can see the subject and all the activities together.

This dataset is written out as the tidydata.txt

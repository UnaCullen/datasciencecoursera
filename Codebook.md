---
title: "Codebook For TidyData.txt"

---
Source:The Source Data was provided by :
        Human Activity Recognition Using Smartphones Dataset
        Version 1.0


Data preparation:


The following files are merged:
Subject_train,
X_train,
y_train,
Subject_test,
X_test,
y_test

Only varibales relating to mean() and std() were retained.
Labels for the variables were improved as outlined below.
The units are the average  calculated for each variable based on subject and activity combined

---

Variables 

---
Units:
mean(): Mean value
std(): Standard deviation



Subjects                      1   Subjects        1-30

Activity                      2   Activity        1 = Walking 
                                                  2 = WALKING_UPSTAIRS
                                                  3 = WALKING_DOWNSTAIRS
                                                  4  = SITTING
                                                  5  = STANDING
                                                  6  = LAYING   
                             
tBodyAcc-mean()-X	            3	timeBodyAccelerometer-mean()-X  
tBodyAcc-mean()-Y	            4	timeBodyAccelerometer-mean()-Y
tBodyAcc-mean()-Z	            5	timeBodyAccelerometer-mean()-Z
tBodyAcc-std()-X	            6	timeBodyAccelerometer-std()-X
tBodyAcc-std()-Y	            7	timeBodyAccelerometer-std()-Y
tBodyAcc-std()-Z	            8	timeBodyAccelerometer-std()-Z
tGravityAcc-mean()-X	        9	timeGravityAccelerometer-mean()-X
tGravityAcc-mean()-Y	        10	timeGravityAccelerometer-mean()-Y
tGravityAcc-mean()-Z	        11	timeGravityAccelerometer-mean()-Z
tGravityAcc-std()-X	          12	timeGravityAccelerometer-std()-X
tGravityAcc-std()-Y	          13	timeGravityAccelerometer-std()-Y
tGravityAcc-std()-Z	          14	timeGravityAccelerometer-std()-Z
tBodyAccJerk-mean()-X	        15	timeBodyAccelerometerJerk-mean()-X
tBodyAccJerk-mean()-Y	        16	timeBodyAccelerometerJerk-mean()-Y
tBodyAccJerk-mean()-Z	        17	timeBodyAccelerometerJerk-mean()-Z
tBodyAccJerk-std()-X	        18	timeBodyAccelerometerJerk-std()-X
tBodyAccJerk-std()-Y        	19	timeBodyAccelerometerJerk-std()-Y
tBodyAccJerk-std()-Z	        20	timeBodyAccelerometerJerk-std()-Z
tBodyGyro-mean()-X	          21	timeBodyGyroscope-mean()-X
tBodyGyro-mean()-Y	          22	timeBodyGyroscope-mean()-Y
tBodyGyro-mean()-Z	          23	timeBodyGyroscope-mean()-Z
tBodyGyro-std()-X	            24	timeBodyGyroscope-std()-X
tBodyGyro-std()-Y	            25	timeBodyGyroscope-std()-Y
tBodyGyro-std()-Z	            26	timeBodyGyroscope-std()-Z
tBodyGyroJerk-mean()-X	      27	timeBodyGyroscopeJerk-mean()-X
tBodyGyroJerk-mean()-Y	      28	timeBodyGyroscopeJerk-mean()-Y
tBodyGyroJerk-mean()-Z	      29	timeBodyGyroscopeJerk-mean()-Z
tBodyGyroJerk-std()-X	        30	timeBodyGyroscopeJerk-std()-X
tBodyGyroJerk-std()-Y	        31	timeBodyGyroscopeJerk-std()-Y
tBodyGyroJerk-std()-Z	        32	timeBodyGyroscopeJerk-std()-Z
tBodyAccMag-mean()	          33	timeBodyAccelerometerMagnitude-mean()
tBodyAccMag-std()	            34	timeBodyAccelerometerMagnitude-std()
tGravityAccMag-mean()	        35	timeGravityAccelerometerMagnitude-mean()
tGravityAccMag-std()	        36	timeGravityAccelerometerMagnitude-std()
tBodyAccJerkMag-mean()	      37	timeBodyAccelerometerJerkMagnitude-mean()
tBodyAccJerkMag-std()	        38	timeBodyAccelerometerJerkMagnitude-std()
tBodyGyroMag-mean()	          39	timeBodyGyroscopeMagnitude-mean()
tBodyGyroMag-std()	          40	timeBodyGyroscopeMagnitude-std()
tBodyGyroJerkMag-mean()	      41	timeBodyGyroscopeJerkMagnitude-mean()
tBodyGyroJerkMag-std()	      42	timeBodyGyroscopeJerkMagnitude-std()
fBodyAcc-mean()-X	            43	frequencyBodyAccelerometer-mean()-X
fBodyAcc-mean()-Y	            44	frequencyBodyAccelerometer-mean()-Y
fBodyAcc-mean()-Z	            45	frequencyBodyAccelerometer-mean()-Z
fBodyAcc-std()-X	            46	frequencyBodyAccelerometer-std()-X
fBodyAcc-std()-Y	            47	frequencyBodyAccelerometer-std()-Y
fBodyAcc-std()-Z	            48	frequencyBodyAccelerometer-std()-Z
fBodyAccJerk-mean()-X	        49	frequencyBodyAccelerometerJerk-mean()-X
fBodyAccJerk-mean()-Y	        50	frequencyBodyAccelerometerJerk-mean()-Y
fBodyAccJerk-mean()-Z	        51	frequencyBodyAccelerometerJerk-mean()-Z
fBodyAccJerk-std()-X	        52	frequencyBodyAccelerometerJerk-std()-X
fBodyAccJerk-std()-Y	        53	frequencyBodyAccelerometerJerk-std()-Y
fBodyAccJerk-std()-Z	        54	frequencyBodyAccelerometerJerk-std()-Z
fBodyGyro-mean()-X	          55	frequencyBodyGyroscope-mean()-X
fBodyGyro-mean()-Y	          56	frequencyBodyGyroscope-mean()-Y
fBodyGyro-mean()-Z	          57	frequencyBodyGyroscope-mean()-Z
fBodyGyro-std()-X	            58	frequencyBodyGyroscope-std()-X
fBodyGyro-std()-Y	            59	frequencyBodyGyroscope-std()-Y
fBodyGyro-std()-Z	            60	frequencyBodyGyroscope-std()-Z
fBodyAccMag-mean()	          61	frequencyBodyAccelerometerMagnitude-mean()
fBodyAccMag-std()	            62	frequencyBodyAccelerometerMagnitude-std()
fBodyBodyAccJerkMag-mean()  	63	frequencyBodyAccelerometerJerkMagnitude-mean()
fBodyBodyAccJerkMag-std()	    64	frequencyBodyAccelerometerJerkMagnitude-std()
fBodyBodyGyroMag-mean()	      65	frequencyBodyGyroscopeMagnitude-mean()
fBodyBodyGyroMag-std()	      66	frequencyBodyGyroscopeMagnitude-std()
fBodyBodyGyroJerkMag-mean()	  67	frequencyBodyGyroscopeJerkMagnitude-mean()
fBodyBodyGyroJerkMag-std()	  68	frequencyBodyGyroscopeJerkMagnitude-std()


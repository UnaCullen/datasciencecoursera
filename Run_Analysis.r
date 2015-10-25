# Download the file and unzip it

fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl,"data.zip")
unzip("data.zip")

#  Merged the training sets first

traindata <-read.table("./UCI HAR Dataset/train/X_train.txt",sep ="",header = FALSE)
trainy <-read.table("./UCI HAR Dataset/train/y_train.txt",sep ="",header = FALSE)
trainsubject <-read.table("./UCI HAR Dataset/train/subject_train.txt",sep ="",header = FALSE)
train4 <- cbind(trainy,traindata)
combinedtrain <- cbind(trainsubject,train4)

# Change the column names for Subjects and Activity

colnames(combinedtrain)[1]<- "Subjects"
colnames(combinedtrain)[2]<- "Activity"

# Merge the test sets

testdata <-read.table("./UCI HAR Dataset/test/X_test.txt",sep ="",header = FALSE)
testy <-read.table("./UCI HAR Dataset/test/y_test.txt",sep ="",header = FALSE)
testsubject <-read.table("./UCI HAR Dataset/test/subject_test.txt",sep ="",header = FALSE)
test4 <- cbind(testy,testdata)
combinedtest <- cbind(testsubject,test4)

# Change the column names for Subjects and Activity

colnames(combinedtest)[1]<- "Subjects"
colnames(combinedtest)[2]<- "Activity"

# Combine the training and test data sets


projectdata <- rbind(combinedtest,combinedtrain)

# Change the column names for variables by getting labels from features
# dataset and transposing and updating columns names to list

fdatadata = read.table("./UCI HAR Dataset/features.txt", header = FALSE)
fdata <- t(fdatadata)
fdata <- fdata[2,]
colnames(projectdata)[3:563] <- fdata

# Extract only the columns that have mean() and std() in their names

subfdata <-fdata[grep("mean\\(\\)|std\\(\\)",fdata)]
allcolnames <-c("Subjects","Activity",subfdata)
projectdata <-subset(projectdata,select=allcolnames)
projectdatasat <- projectdata

# Update the Ativity id's with the names

for (i in 1:nrow(projectdatasat)) {
  if (projectdatasat$Activity[i] == 1) {
    projectdatasat$Activity[i] <- "Walking"
  }   
  
  else if (projectdatasat$Activity[i] == 2) {
    projectdatasat$Activity[i] <- "WALKING_UPSTAIRS"
  } 
  
  else if (projectdatasat$Activity[i] == 3) {
    projectdatasat$Activity[i] <- "WALKING_DOWNSTAIRS"
  } 
  else if (projectdatasat$Activity[i] == 4) {
    projectdatasat$Activity[i] <- "SITTING"
  } 
  else if (projectdatasat$Activity[i] == 5) {
    projectdatasat$Activity[i] <- "STANDING"
  } 
  else if (projectdatasat$Activity[i] == 6) {
    projectdatasat$Activity[i] <- "LAYING"
  }
  
}

# Update the names of the variables so they make more sense

names(projectdatasat) <- gsub("^t","time",names(projectdatasat))
names(projectdatasat) <- gsub("^f","frequency",names(projectdatasat))
names(projectdatasat) <- gsub("Acc","Accelerometer",names(projectdatasat))
names(projectdatasat) <- gsub("BodyBody","Body",names(projectdatasat))
names(projectdatasat) <- gsub("Mag","Magnitude",names(projectdatasat))
names(projectdatasat) <- gsub("Gyro","Gyroscope",names(projectdatasat))

# Based on the dataset extract a new one combining subject and Activity 
# and getting the average of the variables

datapart5 <- aggregate(.~Subjects +Activity,projectdatasat,mean)
datapart5 <-datapart5[order(datapart5$Subjects,datapart5$Activity),]

# Write the new dataset out as tidydata

write.table(datapart5,file = "tidydata.txt",row.names = FALSE)

#Please note in all variables I used camelcase to aid in readability due to length of the variables
# I assumed all files were in the same order because I had no way to correct them if they weren't

###Pre-Questions - Load in data and perform setup operations to prepare for questions
##Assumes data is downloaded, un zipped and saved in the GaCD/Course Project/UCI HAR Dataset folder
setwd("~/Data Scientist Spec/Getting and Cleaning Data/Course Project/UCI HAR Dataset")

##Reads in variables from the features.txt files previously stated location
varLabelsUCI <- read.table("features.txt", sep="", header=FALSE)

##reads in the test and train data files from the previously stated location, using
##varLabelsUCI as the col Names
library(plyr)
#read in all test UCI files (data, labels, subject)
testUCI <- read.table("./test/X_test.txt", sep="", header=FALSE,col.names=varLabelsUCI[,2])
testUCILabels <- read.table("./test/y_test.txt", sep="", header=FALSE,col.names="activity")
testUCISubject <- read.table("./test/subject_test.txt", sep="", header=FALSE,col.names="subject")
#Bind all test files into a single file
testUCIMerge <- cbind(testUCISubject, testUCILabels, testUCI)

#read in all train UCI files (data, labels, subject)
trainUCI <- read.table("./train/X_train.txt", sep="", header=FALSE,col.names=varLabelsUCI[,2])
trainUCILabels <- read.table("./train/y_train.txt", sep="", header=FALSE,col.names="activity")
trainUCISubject <- read.table("./train/subject_train.txt", sep="", header=FALSE,col.names="subject")
#Bind all train files into a single file
trainUCIMerge <- cbind(trainUCISubject, trainUCILabels, trainUCI)

###Step 1 - Merge Training and Test datasets to create 1 dataset
#I took merge to mean combine as the description in the README file says these are two different
#sets of people not additional information on the same subjects. I instead used rbind to combine
#trainUCIMerge and testUCIMerge to create combinedUCI

##Combine testUCIMerge and trainUCIMerge
combinedUCI <- rbind(trainUCIMerge,testUCIMerge)

###Step 2 - Extract only the measurements on mean and std for each measurement

#Assume variable names with mean or std contain the requested measurement
#Determine which variables these are using grep1
combinedUCIMeanStd <- combinedUCI[,grepl("subject", colnames(combinedUCI),ignore.case=TRUE) | grepl("activity", colnames(combinedUCI),ignore.case=TRUE) |
                                      (grepl("mean", colnames(combinedUCI),ignore.case=TRUE)|grepl("std", colnames(combinedUCI),ignore.case=TRUE))]

###Step 3 - Use descriptive activity names to name the activities in the data set
#Load in activity names labels, change them to lowercase and remove underscore
activityLabels <- read.table("activity_labels.txt", sep="", header=FALSE)
activityLabels[,2] <- gsub("_","",tolower(activityLabels[,2]))
combinedUCIMeanStdAct <- merge(combinedUCIMeanStd, activityLabels, by.x="activity", by.y="V1")

###Step 4 - Use appropriate names for variables
##I first moved the colnames to a new variables to decrease required processing power and ensure
##I don't mess up the primary file
#name all columns with lowercase, remove all periods, and expand any abbreviations
colnamesUCI <- tolower(colnames(combinedUCIMeanStdAct))
colnamesUCI <- gsub("[.]","",colnamesUCI)
colnamesUCI <- gsub("tbody","timebody",colnamesUCI)
colnamesUCI <- gsub("tgravity","timegravity",colnamesUCI)
colnamesUCI <- gsub("fbody","freqbody",colnamesUCI)
colnamesUCI <- gsub("fgravity","freqgravity",colnamesUCI)
colnamesUCI <- gsub("acc","acceleration",colnamesUCI)
colnamesUCI <- gsub("gyro","gyroscopic",colnamesUCI)
colnamesUCI <- gsub("std","standarddeviation",colnamesUCI)
colnamesUCI <- gsub("mag","magnitude",colnamesUCI)
colnamesUCI <- gsub("v2","activitydescriptors",colnamesUCI)
#apply new column names to dataset
colnames(combinedUCIMeanStdAct) <- colnamesUCI

###Step 5 - Create a second, independent data set with the average of each variable for
### each activity and each subject
#Drop unnecessary activity column since we now have the descriptors
tidyDataUCI <- subset(combinedUCIMeanStdAct,select=-c(1))
#Aggregate based on activity descriptor and subject number for each variable from previous steps
tidyDataUCI <- aggregate(.~activitydescriptors + subject, data=tidyDataUCI, mean)

#save tidy data for future use
#I moved my wd up one level to save the data so i didn't touch teh zipped file at all
setwd("~/Data Scientist Spec/Getting and Cleaning Data/Course Project")
write.table(tidyDataUCI,file="tidyDataUCI.txt", sep="\t")

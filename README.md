README File
========================================================
Intro: 
This file is built from the UCI Human Activity Recognition Using Smartphones Dataset Version 1.0
This data and additional descriptors can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

========================================================
Notes:

The steps I used to tidy the data from UCI are detailed below along with any assumptions I made.
Please note I used the following additional packages
    plyr
    
Also for any variables I used while coding within R I used Camel case to assist in reability.

========================================================

Assumptions (also within below steps:
I assumed all files were in the same order because I had no way to correct them if they weren't
I assumed the data was loaded into the working directory and was unzipped

========================================================

Steps:

(1) Pre-Questions - Load in data and perform setup operations to prepare for questions
    (1.a) Read in variables from the features.txt files
    (1.b) Read in the test and train data files from the previously stated location, using data from (1.b) as colnames
    (1.c) Merge all pieces of test and train files to make one overall test data frame and one overall train data frame

(2) Step 1 - Merge Training and Test datasets to create 1 dataset
    (2.a) I took merge to mean combine as the description in the README file says these are two different sets of people not     additional information on the same subjects. I instead used rbind to combine the two datasets

(3) Step 2 - Extract only the measurements on mean and std for each measurement
    (3.a) I assumed variable names with mean or std contain the requested measurement. I found these variables using grepl and applied this directly to the dataset


(4) Step 3 - Use descriptive activity names to name the activities in the data set
    (4.a) I read in activity names labels from activity_labels.txt
    (4.b) I changed the activity labels them to lowercase and remove underscore to make them tidy
    (4.c) I added these clean labels as activity descriptors and matched them against the activiyt integers

(5) Step 4 - Use appropriate names for variables
    (5.a) I first moved the colnames to a new variables to decrease required processing power and ensure I don't mess up the primary file
    (5.b) I used tolower to move everything to lower case, gsub to find and replace any periods, and gsub again to expand an abbreviations
    (5.c) I then applied these tidy colnames back to the file they came from

(6) Step 5 - Create a second, independent data set with the average of each variable for each activity and each subject
    (6.a) I dropped the  unnecessary activity column that just contained an integer since we now have the descriptors
    (6.b) I used aggregate to get the mean for each activity descriptor and subject number

(7) Post-Questions - Save tidy data for future use
    (7.a)I moved my wd up one level to save the data so I didn't touch anything in the original file
    (7.b) I wrote the table to a table delimited text file
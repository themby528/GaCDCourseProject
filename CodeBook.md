#Code Book
========================================================

This Code book describes the variables used in the final tidy Dataset. More Details on the goal the R script can be found in the README markdown

##Variables
========================================================
General Steps:

I removed all dot and parentheses from the original variables. I also set all the variables to lower case. I expanded any abbreviated words such as acc to acceleration. AS noted above the final tidy data variable is now the average of an activity for a subject instead of each experiment. Below is the data set/original variable/tidy data variable/additional description of transformation not noted above. The two exceptions to this format were the subject and activity descriptor variables and they are detailed below.

activity_labels.txt      none      activitydescriptors      This variable was merged from the activity_labels set onto the combined data set. It used the y_train and y_test variables (integers) to give the name of the activity instead of the number. The y_train/text variables were dropped form the tidy dataset as the activity_labels took the place.

subject_train.txt and subject_test.txt      none      subject      This variable was merged into the individual test and train data sets and then named subject. There were no additional transformations performed.

features.txt      tBodyAcc-mean()-X      timebodyaccelerationmeanx
features.txt      tBodyAcc-mean()-Y      timebodyaccelerationmeany
features.txt      tBodyAcc-mean()-Z      timebodyaccelerationmeanz
features.txt      tBodyAcc-std()-X      timebodyaccelerationstandarddeviationx
features.txt      tBodyAcc-std()-Y      timebodyaccelerationstandarddeviationy
features.txt      tBodyAcc-std()-Z      timebodyaccelerationstandarddeviationz
features.txt      tGravityAcc-mean()-X      timegravityaccelerationmeanx
features.txt      tGravityAcc-mean()-Y      timegravityaccelerationmeany
features.txt      tGravityAcc-mean()-Z      timegravityaccelerationmeanz
features.txt      tGravityAcc-std()-X      timegravityaccelerationstandarddeviationx
features.txt      tGravityAcc-std()-Y      timegravityaccelerationstandarddeviationy
features.txt      tGravityAcc-std()-Z      timegravityaccelerationstandarddeviationz
features.txt      tBodyAccJerk-mean()-X      timebodyaccelerationjerkmeanx
features.txt      tBodyAccJerk-mean()-Y      timebodyaccelerationjerkmeany
features.txt      tBodyAccJerk-mean()-Z      timebodyaccelerationjerkmeanz
features.txt      tBodyAccJerk-std()-X      timebodyaccelerationjerkstandarddeviationx
features.txt      tBodyAccJerk-std()-Y      timebodyaccelerationjerkstandarddeviationy
features.txt      tBodyAccJerk-std()-Z      timebodyaccelerationjerkstandarddeviationz
features.txt      tBodyGyro-mean()-X      timebodygyroscopicmeanx
features.txt      tBodyGyro-mean()-Y      timebodygyroscopicmeany
features.txt      tBodyGyro-mean()-Z      timebodygyroscopicmeanz
features.txt      tBodyGyro-std()-X      timebodygyroscopicstandarddeviationx
features.txt      tBodyGyro-std()-Y      timebodygyroscopicstandarddeviationy
features.txt      tBodyGyro-std()-Z      timebodygyroscopicstandarddeviationz
features.txt      tBodyGyroJerk-mean()-X      timebodygyroscopicjerkmeanx
features.txt      tBodyGyroJerk-mean()-Y      timebodygyroscopicjerkmeany
features.txt      tBodyGyroJerk-mean()-Z      timebodygyroscopicjerkmeanz
features.txt      tBodyGyroJerk-std()-X      timebodygyroscopicjerkstandarddeviationx
features.txt      tBodyGyroJerk-std()-Y      timebodygyroscopicjerkstandarddeviationy
features.txt      tBodyGyroJerk-std()-Z      timebodygyroscopicjerkstandarddeviationz
features.txt      tBodyAccMag-mean()      timebodyaccelerationmagnitudemean
features.txt      tBodyAccMag-std()      timebodyaccelerationmagnitudestandarddeviation
features.txt      tGravityAccMag-mean()      timegravityaccelerationmagnitudemean
features.txt      tGravityAccMag-std()      timegravityaccelerationmagnitudestandarddeviation
features.txt      tBodyAccJerkMag-mean()      timebodyaccelerationjerkmagnitudemean
features.txt      tBodyAccJerkMag-std()      timebodyaccelerationjerkmagnitudestandarddeviation
features.txt      tBodyGyroMag-mean()      timebodygyroscopicmagnitudemean
features.txt      tBodyGyroMag-std()      timebodygyroscopicmagnitudestandarddeviation
features.txt      tBodyGyroJerkMag-mean()      timebodygyroscopicjerkmagnitudemean
features.txt      tBodyGyroJerkMag-std()      timebodygyroscopicjerkmagnitudestandarddeviation
features.txt      fBodyAcc-mean()-X      freqbodyaccelerationmeanx
features.txt      fBodyAcc-mean()-Y      freqbodyaccelerationmeany
features.txt      fBodyAcc-mean()-Z      freqbodyaccelerationmeanz
features.txt      fBodyAcc-std()-X      freqbodyaccelerationstandarddeviationx
features.txt      fBodyAcc-std()-Y      freqbodyaccelerationstandarddeviationy
features.txt      fBodyAcc-std()-Z      freqbodyaccelerationstandarddeviationz
features.txt      fBodyAcc-meanFreq()-X      freqbodyaccelerationmeanfreqx
features.txt      fBodyAcc-meanFreq()-Y      freqbodyaccelerationmeanfreqy
features.txt      fBodyAcc-meanFreq()-Z      freqbodyaccelerationmeanfreqz
features.txt      fBodyAccJerk-mean()-X      freqbodyaccelerationjerkmeanx
features.txt      fBodyAccJerk-mean()-Y      freqbodyaccelerationjerkmeany
features.txt      fBodyAccJerk-mean()-Z      freqbodyaccelerationjerkmeanz
features.txt      fBodyAccJerk-std()-X      freqbodyaccelerationjerkstandarddeviationx
features.txt      fBodyAccJerk-std()-Y      freqbodyaccelerationjerkstandarddeviationy
features.txt      fBodyAccJerk-std()-Z      freqbodyaccelerationjerkstandarddeviationz
features.txt      fBodyAccJerk-meanFreq()-X      freqbodyaccelerationjerkmeanfreqx
features.txt      fBodyAccJerk-meanFreq()-Y      freqbodyaccelerationjerkmeanfreqy
features.txt      fBodyAccJerk-meanFreq()-Z      freqbodyaccelerationjerkmeanfreqz
features.txt      fBodyGyro-mean()-X      freqbodygyroscopicmeanx
features.txt      fBodyGyro-mean()-Y      freqbodygyroscopicmeany
features.txt      fBodyGyro-mean()-Z      freqbodygyroscopicmeanz
features.txt      fBodyGyro-std()-X      freqbodygyroscopicstandarddeviationx
features.txt      fBodyGyro-std()-Y      freqbodygyroscopicstandarddeviationy
features.txt      fBodyGyro-std()-Z      freqbodygyroscopicstandarddeviationz
features.txt      fBodyGyro-meanFreq()-X      freqbodygyroscopicmeanfreqx
features.txt      fBodyGyro-meanFreq()-Y      freqbodygyroscopicmeanfreqy
features.txt      fBodyGyro-meanFreq()-Z      freqbodygyroscopicmeanfreqz
features.txt      fBodyAccMag-mean()      freqbodyaccelerationmagnitudemean
features.txt      fBodyAccMag-std()      freqbodyaccelerationmagnitudestandarddeviation
features.txt      fBodyAccMag-meanFreq()      freqbodyaccelerationmagnitudemeanfreq
features.txt      fBodyBodyAccJerkMag-mean()      freqbodybodyaccelerationjerkmagnitudemean
features.txt      fBodyBodyAccJerkMag-std()      freqbodybodyaccelerationjerkmagnitudestandarddeviation
features.txt      fBodyBodyAccJerkMag-meanFreq()      freqbodybodyaccelerationjerkmagnitudemeanfreq
features.txt      fBodyBodyGyroMag-mean()      freqbodybodygyroscopicmagnitudemean
features.txt      fBodyBodyGyroMag-std()      freqbodybodygyroscopicmagnitudestandarddeviation
features.txt      fBodyBodyGyroMag-meanFreq()      freqbodybodygyroscopicmagnitudemeanfreq
features.txt      fBodyBodyGyroJerkMag-mean()      freqbodybodygyroscopicjerkmagnitudemean
features.txt      fBodyBodyGyroJerkMag-std()      freqbodybodygyroscopicjerkmagnitudestandarddeviation
features.txt      fBodyBodyGyroJerkMag-meanFreq()      freqbodybodygyroscopicjerkmagnitudemeanfreq
features.txt      angle(tBodyAccMean,gravity)      angletimebodyaccelerationmeangravity
features.txt      angle(tBodyAccJerkMean),gravityMean)      angletimebodyaccelerationjerkmeangravitymean
features.txt      angle(tBodyGyroMean,gravityMean)      angletimebodygyroscopicmeangravitymean
features.txt      angle(tBodyGyroJerkMean,gravityMean)      angletimebodygyroscopicjerkmeangravitymean
features.txt      angle(X,gravityMean)      anglexgravitymean
features.txt      angle(Y,gravityMean)      angleygravitymean
features.txt      angle(Z,gravityMean)      anglezgravitymean




##Data Transformation Steps
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

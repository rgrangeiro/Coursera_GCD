## Codebook - Getting and Cleaning Data Project

***

#### Data:

[Compressed Source File](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)  - "Human Activity Recognition Using Smartphones Dataset"
(Version 1.0)

#### From:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

#### Link:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

***
	
### Structure of "run_analysis.R" script file.

***

#### Part 1 - Creating a environment and getting files.

***

1. Create work folders.

2. Go to files folder.

3. Download zip data file.

4. Install packs e load libraries.

***

#### Part 2 - Cleaning data.

***

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement.

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive variable names.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

***

### Variables of "run_analysis.R" script file.

***

**url:** URL of compressed source data.

**file:** Compressed destination file.

**testActivity:** Dataset of the Activities of the Test files.

**testSubject:** Dataset of the Subjects of the Test files.

**testFeatures:** Dataset of the Features of the Test files.

**trainActivity:** Dataset of the Activities of the Train files.

**trainSubject:** Dataset of the Subjects of the Train files.

**trainFeatures:** Dataset of the Features of the Train files.

**dataActivity:** Binding dataset of the Test and Train files from Activities.

**dataSubject:** Binding dataset of the Test and Train files from Subject.

**dataFeatures:** Binding dataset of the Test and Train files from Features.

**features:** Dataset of the Feature file.

**labelsActivity:** Dataset of the Activities labels file.

**data_Subj_Acti:** Binding dataset with Subjects and Activities datasets.

**data_Feat_Subj_Acti:** Binding Subjects and Activities dataset with Features dataset.

**dataMeanStd:** Dataset with column names of Mean and standard deviation for each measurement.

**subset_one:** Dataset with descriptive activity names of the activities.

**subset_two:** Dataset with the average of each variable for each activity and each subject.


***


### Output file

***

**Name:** average_activity_subject.txt

**Structure of file:** 'data.frame' with 180 obs. of  88 variables

**Variable names:**

- "Subject"
- "Activity"
- "timeimeBodyAccelerometer-mean()-X"
- "timeimeBodyAccelerometer-mean()-Y"
- "timeimeBodyAccelerometer-mean()-Z"
- "timeimeBodyAccelerometer-StandardDeviation()-X"
- "timeimeBodyAccelerometer-StandardDeviation()-Y"
- "timeimeBodyAccelerometer-StandardDeviation()-Z"
- "timeGravityAccelerometer-mean()-X"
- "timeGravityAccelerometer-mean()-Y"
- "timeGravityAccelerometer-mean()-Z"
- "timeGravityAccelerometer-StandardDeviation()-X"
- "timeGravityAccelerometer-StandardDeviation()-Y"
- "timeGravityAccelerometer-StandardDeviation()-Z"
- "timeimeBodyAccelerometerJerk-mean()-X"
- "timeimeBodyAccelerometerJerk-mean()-Y"
- "timeimeBodyAccelerometerJerk-mean()-Z"
- "timeimeBodyAccelerometerJerk-StandardDeviation()-X"
- "timeimeBodyAccelerometerJerk-StandardDeviation()-Y"
- "timeimeBodyAccelerometerJerk-StandardDeviation()-Z"
- "timeimeBodyGyroscope-mean()-X"
- "timeimeBodyGyroscope-mean()-Y"
- "timeimeBodyGyroscope-mean()-Z"
- "timeimeBodyGyroscope-StandardDeviation()-X"
- "timeimeBodyGyroscope-StandardDeviation()-Y"
- "timeimeBodyGyroscope-StandardDeviation()-Z"
- "timeimeBodyGyroscopeJerk-mean()-X"
- "timeimeBodyGyroscopeJerk-mean()-Y"
- "timeimeBodyGyroscopeJerk-mean()-Z"
- "timeimeBodyGyroscopeJerk-StandardDeviation()-X"
- "timeimeBodyGyroscopeJerk-StandardDeviation()-Y"
- "timeimeBodyGyroscopeJerk-StandardDeviation()-Z"
- "timeimeBodyAccelerometerMagnitude-mean()"
- "timeimeBodyAccelerometerMagnitude-StandardDeviation()"
- "timeGravityAccelerometerMagnitude-mean()"
- "timeGravityAccelerometerMagnitude-StandardDeviation()"
- "timeimeBodyAccelerometerJerkMagnitude-mean()"
- "timeimeBodyAccelerometerJerkMagnitude-StandardDeviation()"
- "timeimeBodyGyroscopeMagnitude-mean()"
- "timeimeBodyGyroscopeMagnitude-StandardDeviation()"
- "timeimeBodyGyroscopeJerkMagnitude-mean()"
- "timeimeBodyGyroscopeJerkMagnitude-StandardDeviation()"
- "frequencyBodyAccelerometer-mean()-X"
- "frequencyBodyAccelerometer-mean()-Y"
- "frequencyBodyAccelerometer-mean()-Z"
- "frequencyBodyAccelerometer-StandardDeviation()-X"
- "frequencyBodyAccelerometer-StandardDeviation()-Y"
- "frequencyBodyAccelerometer-StandardDeviation()-Z"
- "frequencyBodyAccelerometer-meanFrequency()-X"
- "frequencyBodyAccelerometer-meanFrequency()-Y"
- "frequencyBodyAccelerometer-meanFrequency()-Z"
- "frequencyBodyAccelerometerJerk-mean()-X"
- "frequencyBodyAccelerometerJerk-mean()-Y"
- "frequencyBodyAccelerometerJerk-mean()-Z"
- "frequencyBodyAccelerometerJerk-StandardDeviation()-X"
- "frequencyBodyAccelerometerJerk-StandardDeviation()-Y"
- "frequencyBodyAccelerometerJerk-StandardDeviation()-Z"
- "frequencyBodyAccelerometerJerk-meanFrequency()-X"
- "frequencyBodyAccelerometerJerk-meanFrequency()-Y"
- "frequencyBodyAccelerometerJerk-meanFrequency()-Z"
- "frequencyBodyGyroscope-mean()-X"
- "frequencyBodyGyroscope-mean()-Y"
- "frequencyBodyGyroscope-mean()-Z"
- "frequencyBodyGyroscope-StandardDeviation()-X"
- "frequencyBodyGyroscope-StandardDeviation()-Y"
- "frequencyBodyGyroscope-StandardDeviation()-Z"
- "frequencyBodyGyroscope-meanFrequency()-X"
- "frequencyBodyGyroscope-meanFrequency()-Y"
- "frequencyBodyGyroscope-meanFrequency()-Z"
- "frequencyBodyAccelerometerMagnitude-mean()"
- "frequencyBodyAccelerometerMagnitude-StandardDeviation()"
- "frequencyBodyAccelerometerMagnitude-meanFrequency()"
- "frequencyBodyAccelerometerJerkMagnitude-mean()"
- "frequencyBodyAccelerometerJerkMagnitude-StandardDeviation()"
- "frequencyBodyAccelerometerJerkMagnitude-meanFrequency()"
- "frequencyBodyGyroscopeMagnitude-mean()"
- "frequencyBodyGyroscopeMagnitude-StandardDeviation()"
- "frequencyBodyGyroscopeMagnitude-meanFrequency()"
- "frequencyBodyGyroscopeJerkMagnitude-mean()"
- "frequencyBodyGyroscopeJerkMagnitude-StandardDeviation()"
- "frequencyBodyGyroscopeJerkMagnitude-meanFrequency()"
- "angle(timeBodyAccelerometerMean,gravity)"
- "angle(timeBodyAccelerometerJerkMean),gravityMean)"
- "angle(timeBodyGyroscopeMean,gravityMean)"
- "angle(timeBodyGyroscopeJerkMean,gravityMean)"
- "angle(X,gravityMean)"
- "angle(Y,gravityMean)"
- "angle(Z,gravityMean)"

***

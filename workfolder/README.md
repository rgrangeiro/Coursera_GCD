
# README - Getting and Cleaning Data Project

***

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

 You should create one R script called run_analysis.R that does the following. 
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Good luck!

***

# Description of sections of the run_analysis.R file.

***

## Part 1 - Creating a environment and getting files.

***

#### 1. Create work folders.
###### Verify if a folder strutucure exists. Create if not exists. 

#### 2. Go to files folder.
###### The data files will put in "dataFiles" folder and we setting workfolder to this path.

#### 3. Download zip data file.
###### Getting the compressed file from Cloudfront and uncompress data files into workfolder.

#### 4. Install packs e load libraries.
###### Install and load packages and libraries that we will use in this script.

***

## Part 2 - Cleaning data.

***


#### 1. Merges the training and the test sets to create one data set.
+ Reading "Test" files and load in datasets.
+ Reading "Train" files and load in datasets.
+ Binding "Test" and "Train" datasets in a "Data" dataset.
+ Reading "Features" and "Activity Labels" files and load in datasets.

***

##### 1.1 Setting variable names.
###### Set variables (column names) to "Subject", "Activity" and "Features" datasets.

***

##### 1.2  Binding datasets
###### Create a dataset for to bind "Subject", "Activity" datasets and create a new dataset to bing "Features" in "Subject" + "Activity" dataset.

***

#### 2. Extracts only the measurements on the mean and standard deviation for each measurement.
###### Create a dataset for only the measurements on the mean and standard deviation for each measurement finding in "data_Feat_Subj_Acti" dataset.

***

#### 3. Uses descriptive activity names to name the activities in the data set
###### Data on activities dataset are numbers, but labels are more descritives than numbers. So, change numbers for labels activities.

***

#### 4. Appropriately labels the data set with descriptive variable names.
###### Column names had some acronyms and descriptive variable names are more easy to read. 

***

#### 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
###### Create a txt file after create a new subset with average of each variable for each activity and each subject.

***

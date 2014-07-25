<<<<<<< HEAD
README.md
=======
Getting-and-Cleaning-Data-Assignment
====================================

Peer Assignment for Getting and Cleaning Data - Course Project

###################################################################################################
##
##  Name: Mohsin Jessa
##
##	Date: 24-Jul-2014 V1.0
##
##	Course: Getting and Cleaning Data
##
##	Project: Peer review and course assignment
##
###################################################################################################

I have submitted five files to the github repo at the following URL:
https://github.com/MoJeeza/Getting-and-Cleaning-Data-Assignment.git

1) CodeBook.md	   (code book explaining the experiment and it's variables and observations)
2) Readme.md	   (this document - explaining the process and the environment and script execution requirements)
3) run_analysis.R  (the R script to produce the tidy data set from the supplied raw data and other files)
4) Tidy_Set_Q5_table.txt (the final tidy dataset - in table text format)
5) Tidy_Set_Q5.csv	 (the final tidy dataset - in csv format)


###################################################################################################
Reading the tidy data set:

The file Tidy_Set_Q5_table.txt was creating using the write.table function and so can easily be read
back into R using read.table function.

Alternatively:

The Tidy_Set_Q5.csv file was also written by write.csv function and correspondingly can be read into
R using the read.csv function.

Both files have "header" line that contains the column/variable names in the first row.

The data is sorted by the VolunteerID and ActivityName.

###################################################################################################

my notes:

30 volunteers/candidates: 70% of whom were selected for generating training and 30% for generating test data
70% of 30 = 21 (nrow of training_count) and 30% of 30 = 9 (nrow of test_count)



all observations of the test volunteers are recorded in the test_X 
all activity codes by the test volunteers are recorded in the test_y files
all observations of the training volunteers are recorded in the train_X
all activity codes by the training volunteers are recorded in the train_y files


activity codes and their description are given in the activity_labels.txt file
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING





# of observations in the train_(X and y) files matches the # of observations in the subject_train file
likewise
# of observations in the test_(X and y) files matches that in the subject_test file


in R-Studio

test_count = subject_test.txt  = id's of the test volunteers (9 unique values) stored in test_id
train_count = subject_train.txt = id's of the training volunteers (21 unique values) stored in train_id

test_X = all test experiment data
train_X = all training  experiment data

test_Y = all test activity codes
train_Y = all training activity codes

test_count = all test candidate codes
train_count = all training candidate codes





http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.



>>>>>>> d8da3d5a842245a5d219c105197d69935c8b24a9


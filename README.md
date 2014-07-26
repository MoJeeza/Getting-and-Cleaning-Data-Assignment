<<<<<<< HEAD
README.md
=======
Getting-and-Cleaning-Data-Assignment
====================================

Peer Assignment for Getting and Cleaning Data - Course Project
>>>>>>> d8da3d5a842245a5d219c105197d69935c8b24a9


####	Name:		Mohsin Jessa
####	Date:		24-Jul-2014 V1.2
####	Course:		Getting and Cleaning Data
####	Project: 	Peer review and course assignment

I have submitted five files to the github repo at the following URL:
https://github.com/MoJeeza/Getting-and-Cleaning-Data-Assignment.git

Item # | File Name	             | Description
-------|-------------------------|------------------------------------------------
1)     | CodeBook.md	         | (code book explaining the experiment and it's variables and observations)
2)     | Readme.md	             |  (this document - explaining the process of creating a tidy dataset required for the assignment and the environment and script execution requirements)
3)     | run_analysis.R          |(the R script to produce the tidy data set from the supplied raw data and other files)
4)     | Tidy_Set_Q5_table.txt   | (the final tidy dataset - in table text format)
5)     | Tidy_Set_Q5.csv         | (the final tidy dataset - in csv format)


###Introduction:
Before running the script run_analysis.R - PLEASE NOTE: The script assumes the      existence of E:\ drive on windows machine.
Also, all path to files and directories/folders assume windows working environment.

The run_analysis.R script is the only thing required to create a tidy data set for this assignment. The R script can be placed in any directory of any of the storage devices. The script will create all the required directories, download and unzip the zip files and process them into a tidy data set. The tidy data set in R is a dataframe named Tidy_Set_Q5 which is written out to the two files: Tidy_Set_Q5.csv and Tidy_Set_Q5_table.txt using write.csv and write.table functions.

Reading the tidy data set files:

The file Tidy_Set_Q5_table.txt can easily be read back into R using read.table function, while the Tidy_Set_Q5.csv file can be read into R using the read.csv function.
Both files have "header" row that contains the column/variable names.
The data in the files is sorted by the VolunteerID and ActivityName, which are in the two leftmost columns.

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

test_X = experiment data for all test volunteers
train_X = experiment data for all training volunteers

test_Y = activity codes for all test volunteers
train_Y = training activity codes for all training volunteers


http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.




# run_Analysis.R script
### Complete step by step execution of the run_Analysis.R script.


 ## save the current directory
 ##
 ## define the assignment working directory
 ##
 ##
 ## check if the directory exists
 ##
 ## if data directory/folder does not exist create it
   ##
   ## list the files in the directory
 ##
 ## set the default working directory to the assignment directory
 ##
 ## URL of the dataset and other files needed for the assignment
 ##
 ##
 ## download the files required for assignment
   ##
   ## document the download date and time
 ##
 ## unzip the file and extract it into the current folder
 ##
 ##
 ## list the files in the directory tree
 ##
 ## read in the file that contains all the TRAINING volunteer ID's
 ##
 ## now extract only the unique Training Volunteer ID's
 ##
 ## Determine the Number of Training Volunteers
 ##
 ## DO the same for TEST volunteers
 ##
 ##
 ## read in the file that contains all the TEST volunteer ID's
 ##
 ## now extract only the unique values
 ##
 ## Determine the Number of Test Volunteers
 ##
 ## Read in the codes of activities performed by the Training Volunteers
 ##
 ## Read in the codes of activities performed by the Test Volunteers
 ##
 ## Now we read in the file containing the Training Volunteer data
 ##
 ## AND we read in the file containing the Test Volunteer data
 ##
 ## combine the train data VolunteerID, Activity, train data
 ##
 ## combine the test data VolunteerID, Activity, test data
 ##
 ## Requirement 1 of the assignment to merge the test and training datasets
 ##
 ## In order to assign column names to this dataset for columns 3:563
 ## First we read in the file that contains the variable names
 ##
 ## transform col 2 into a vector
 ##
 ## Now we assign the col names col 2 contains the names
 ##
 ## this completes the Step # 1 of the assignment
 ##
 ## Now to extract the only measurements on the "mean" and "standard  deviation" for
 ## each measurement
 ## first we identify the columns that contain those measurements
 ##
 ## Now we create a vector of col names that we can use in extracting the required data
 ##
 ## then we extract the following columns from the Q1 data set (allVol_Data)
 ## VolunteerID, ActivityCode, and columns defined in the vector colNames_Q2
 ##
 ## This completes Step 2 of the assignment
 ##
 ## For Step 3 we need to convert the numeric values in the ActivityCodes column
 ## to descriptive names as provided in the file activity_labels.txt
 ##
 ## let's start by reading in the activity_labels.txt file
 ##
 ## read the file that contains all the activity codes and descriptions
 ##
 ## define the column names for this table
 ##
 ## create a vector of activity Codes only
 ##
 ## Store the count of activity codes how many activity code do we have?
 ##
 ## let's convert the activity numeric codes to corresponding activity names
 ## as provided in the activity_labels.txt file
 ##
 ## and change the column name to match the data as well.
 ##
 ## so the data set for Q3 is
 ##
 ## now for Q4 we can cleanup the varaible names (i.e. column names)
 ## we will remove the () and clean up the text in preparation of Tidy Data
 ##
 ## let's get the column names first
 ##
 ## lets tidy these and assign this to a new dataset
 ##
 ## And to complete Step 4
 ##
 ## put the updated column names back in a new dataset for Step 4
 ## Solution for Step 4
 ##
 ## Now to complete the final Step 5 in which we will tidy up and aggregate the data
 ## Create a second, independent tidy data set with the average of each variable
 ## for each activity and each subject.
 ##
 ## To solve this we will need a count of the number of volunteers
 ## and the number of activities
 ##
 ## create a dummy empty matrix as a place holder
 ## this will be used to build up the means for each volunteer for each activity
 ##
 ## combine the Volunteer ID's (train and test into one big list)
 ##
 ## Total number of volunteers = # of training volunteers + # of test volunteers
 ##
 ## Total number of activities  = AC_Count (as defined earlier in the script)
 ##
 ## initialize counters for looping through the data
 ##
 ## loop through all the volunteers
 ## while we loop we take each activity performed by this volunteer and
 ## calculate the mean of all his observations for that activity
   ##
   ## loop through all the activities for this volunteer
     ##
     ## VCx_ACx will hold all observations for a specific activity data
     ## for a given volunteer
     ##
     ## VCx_ACx_mean will hold one record that is the mean of all  observations
     ## for a given activity for a specific volunteer
     ##
     ## the mean record is then appended to the data frame that will hold data
     ## for all volunteers
     ##
     ## increment the counter for the next activity
   ##
   ## increment the counter for the next volunteer
   ##
   ## reset the activity code counter
  ##
 ## clean up the data frame (remove the dummy observation of NA values)
 ##
 ## remove rownames introduced by using rbind function
 ##
 ## convert to data frame for sorting and cleaning up...to TIDY SET
 ##
 ## change activity codes into activity names
 ##
 ##
 ## TidyUP up the column names
 ##
 ## the data is sorted by VolunteerID and ActivityName (alphabetillay)
 ## remove rownames introduced by sorting
 ##
 ## Finally write out the table to a text file AND a csv delimitted file.
 ## the resulting txt file is submitted for this assignment
 ##
 ## the CSV file is generated just as an extra step


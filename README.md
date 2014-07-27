<<<<<<< HEAD
README.md
=======
Getting-and-Cleaning-Data-Assignment
====================================

Peer Assignment for Getting and Cleaning Data - Course Project
>>>>>>> d8da3d5a842245a5d219c105197d69935c8b24a9


####	Name:		Mohsin Jessa
####	Date:		24-Jul-2014 V1.4
####	Course:		Getting and Cleaning Data
####	Project: 	Peer review and course assignment




Human Activity Recognition Using Smartphones Dataset
==================================================================
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.



# Assignment specific information:

I have submitted the following five files to the github repo at the following URL: https://github.com/MoJeeza/Getting-and-Cleaning-Data-Assignment.git

Item # | File Name	             | Description
-------|-------------------------|------------------------------------------------
1)     | CodeBook.md	         | (code book explaining the experiment and it's variables and observations)
2)     | Readme.md	             |  (this document - explaining the process of creating a tidy dataset required for the assignment and the environment and script execution requirements)
3)     | run_analysis.R          |(the R script to produce the tidy data set from the supplied raw data and other files)
4)     | Tidy_Set_Q5_table.txt   | (the final tidy dataset - in table text format)
5)     | Tidy_Set_Q5.csv         | (the final tidy dataset - in csv format)


###Introduction:
Before running the script run_analysis.R - **PLEASE NOTE:** The script assumes the presence of E:\ drive on windows machine. Also, all files and directory specifications follow the windows environment.

The run_analysis.R script is the only thing required to create a tidy data set for this assignment. The R script can be placed in any directory of any of the storage device on the local machine. The script will create all the required directories, download and unzip the zip files and finally create a tidy data set. The tidy data set in R is a dataframe named Tidy_Set_Q5 which is written out to the two files: Tidy_Set_Q5.csv and Tidy_Set_Q5_table.txt using write.csv and write.table functions.

**Reading the tidy data set files:**

The file Tidy_Set_Q5_table.txt can easily be read back into R using read.table function, while the Tidy_Set_Q5.csv file can be read into R using the read.csv function.
Both files have "header" row that contains the column/variable names.
The data in the files is sorted by the VolunteerID and ActivityName, which are in the two leftmost columns.

###################################################################################################


Pre-processing checks
======================
To confirm the validity of data, I ensured the number of observations in the train`_`(X and y).txt files matched the number of observations in the subject`_`train.txt file. Likewise the number of observations in the test`_`(X and y) files matched that in the subject`_`test.txt file

I also verified the volunteer ID values were between 1 and 30 (as the total number of participants was 30 with 21 being training and 9 being test volunteers)

Similarly the activity codes were verified to be between the values of 1 and 6.


### The following files are required by the run_analysis.R script and are part of the zip file downloaded from the source.

Directory   	| File Name 		| Description
---------------------------|--------------------|--------------------------
UCI HAR Dataset | 'features.txt'| List of all features.
UCI HAR Dataset | 'activity_labels.txt' ! Links the class labels with their activity name.
UCI HAR Dataset\train | 'X_train.txt'| Training set.
UCI HAR Dataset\train | 'y_train.txt'| Training labels.
UCI HAR Dataset\train | 'subject_train.txt'| Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
UCI HAR Dataset\test | 'X_test.txt' | Test set.
UCI HAR Dataset\test | 'y_test.txt' | Test labels.
UCI HAR Dataset\test | 'subject_test.txt'| Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 


# run_analysis.R script
#####Below is a complete step by step execution of the run`_`Analysis.R script. As mentioned earlier, the script creates all the necessary folder/directory structures on E:\ drive and downloads all the files and unzips them maintaining the folder structure of the original dataset. The final output of this script are two files (Tidy`_`Set`_`Q5`_`tables.txt and Tidy`_`Set`_`Q5.csv) in the default working directory defined in the script. 

1. 
1.  ## save the current directory
1.  ##
1.  ## define the assignment working directory
1.  ##
1.  ##
1.  ## check if the directory exists
1.  ##
1.  ## if data directory/folder does not exist create it
1.    ##
1.    ## list the files in the directory
1.  ##
1.  ## set the default working directory to the assignment directory
1.  ##
1.  ## URL of the dataset and other files needed for the assignment
1.  ##
1.  ##
1.  ## download the files required for assignment
1.    ##
1.    ## document the download date and time
1.  ##
1.  ## unzip the file and extract it into the current folder
1.  ##
1.  ##
1.  ## list the files in the directory tree
1.  ##
1.  ## read in the file that contains all the TRAINING volunteer ID's
1.  ##
1.  ## now extract only the unique Training Volunteer ID's
1.  ##
1.  ## Determine the Number of Training Volunteers
1.  ##
1.  ## DO the same for TEST volunteers
1.  ##
1.  ##
1.  ## read in the file that contains all the TEST volunteer ID's
1.  ##
1.  ## now extract only the unique values
1.  ##
1.  ## Determine the Number of Test Volunteers
1.  ##
1.  ## Read in the codes of activities performed by the Training Volunteers
1.  ##
1.  ## Read in the codes of activities performed by the Test Volunteers
1.  ##
1.  ## Now we read in the file containing the Training Volunteer data
1.  ##
1.  ## AND we read in the file containing the Test Volunteer data
1.  ##
1.  ## combine the train data VolunteerID, Activity, train data
1.  ##
1.  ## combine the test data VolunteerID, Activity, test data
1.  ##
1.  ## Requirement 1 of the assignment to merge the test and training datasets
1.  ##
1.  ## In order to assign column names to this dataset for columns 3:563
1.  ## First we read in the file that contains the variable names
1.  ##
1.  ## transform col 2 into a vector
1.  ##
1.  ## Now we assign the col names col 2 contains the names
1.  ##
1.  ## this completes the Step # 1 of the assignment
1.  ##
1.  ## Now to extract the only measurements on the "mean" and "standard  deviation" for
1.  ## each measurement
1.  ## first we identify the columns that contain those measurements
1.  ##
1.  ## Now we create a vector of col names that we can use in extracting the required data
1.  ##
1.  ## then we extract the following columns from the Q1 data set (allVol_Data)
1.  ## VolunteerID, ActivityCode, and columns defined in the vector colNames_Q2
1.  ##
1.  ## This completes Step 2 of the assignment
1.  ##
1.  ## For Step 3 we need to convert the numeric values in the ActivityCodes column
1.  ## to descriptive names as provided in the file activity_labels.txt
1.  ##
1.  ## let's start by reading in the activity_labels.txt file
1.  ##
1.  ## read the file that contains all the activity codes and descriptions
1.  ##
1.  ## define the column names for this table
1.  ##
1.  ## create a vector of activity Codes only
1.  ##
1.  ## Store the count of activity codes how many activity code do we have?
1.  ##
1.  ## let's convert the activity numeric codes to corresponding activity names
1.  ## as provided in the activity_labels.txt file
1.  ##
1.  ## and change the column name to match the data as well.
1.  ##
1.  ## so the data set for Q3 is
1.  ##
1.  ## now for Q4 we can cleanup the varaible names (i.e. column names)
1.  ## we will remove the () and clean up the text in preparation of Tidy Data
1.  ##
1.  ## let's get the column names first
1.  ##
1.  ## lets tidy these and assign this to a new dataset
1.  ##
1.  ## And to complete Step 4
1.  ##
1.  ## put the updated column names back in a new dataset for Step 4
1.  ## Solution for Step 4
1.  ##
1.  ## Now to complete the final Step 5 in which we will tidy up and aggregate the data
1.  ## Create a second, independent tidy data set with the average of each variable
1.  ## for each activity and each subject.
1.  ##
1.  ## To solve this we will need a count of the number of volunteers
1.  ## and the number of activities
1.  ##
1.  ## create a dummy empty matrix as a place holder
1.  ## this will be used to build up the means for each volunteer for each activity
1.  ##
1.  ## combine the Volunteer ID's (train and test into one big list)
1.  ##
1.  ## Total number of volunteers = # of training volunteers + # of test volunteers
1.  ##
1.  ## Total number of activities  = AC_Count (as defined earlier in the script)
1.  ##
1.  ## initialize counters for looping through the data
1.  ##
1.  ## loop through all the volunteers
1.  ## while we loop we take each activity performed by this volunteer and
1.  ## calculate the mean of all his observations for that activity
1.    ##
1.    ## loop through all the activities for this volunteer
1.      ##
1.      ## VCx_ACx will hold all observations for a specific activity data
1.      ## for a given volunteer
1.      ##
1.      ## VCx_ACx_mean will hold one record that is the mean of all  observations
1.      ## for a given activity for a specific volunteer
1.      ##
1.      ## the mean record is then appended to the data frame that will hold data
1.      ## for all volunteers
1.      ##
1.      ## increment the counter for the next activity
1.    ##
1.    ## increment the counter for the next volunteer
1.    ##
1.    ## reset the activity code counter
1.   ##
1.  ## clean up the data frame (remove the dummy observation of NA values)
1.  ##
1.  ## remove rownames introduced by using rbind function
1.  ##
1.  ## convert to data frame for sorting and cleaning up...to TIDY SET
1.  ##
1.  ## change activity codes into activity names
1.  ##
1.  ##
1.  ## TidyUP up the column names
1.  ##
1.  ## the data is sorted by VolunteerID and ActivityName (alphabetillay)
1.  ## remove rownames introduced by sorting
1.  ##
1.  ## Finally write out the table to a text file AND a csv delimitted file.
1.  ## the resulting txt file is submitted for this assignment
1.  ##
1.  ## the CSV file is generated just as an extra step
1. 
1. 
##
## Document Name: run_analysis.R
##
## Project: Peer Review Course Assignment
##
## Author: Mohsin Jessa
##
## Date: 24-July-2014 V1.0
##
## Course: Getting and Cleaning Data
##
##
## save the current directory
curr_wd <- getwd ()
##
## define the assignment working directory
##
asnmt_wd <- "E:/coursera/Getting&CleaningData/Assignment"
##
## check if the directory exists
##
## if data directory/folder does not exist create it
if ( !file.exists ( asnmt_wd ) ) {
  dir.create ( asnmt_wd, recursive = TRUE )
} else {
  ##
  ## list the files in the directory
  list.dirs ( full.names = TRUE, recursive = TRUE, path = ".")
}
##
## set the default working directory to the assignment directory
setwd ( asnmt_wd )
getwd ()
##
## URL of the dataset and other files needed for the assignment
##
data_file_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
data_file <- "getdata-projectfiles-UCI HAR Dataset.zip"
##
## download the files required for assignment
if (!file.exists ( "data_file" ) ) {
  download.file (data_file_url, destfile = data_file )
  ##
  ## document the download date and time
  dateDownLoaded_UCI <- date ()
  dateDownLoaded_UCI
}
##
## unzip the file and extract it into the current folder
unzip ( data_file, overwrite = TRUE, exdir = ".")
##
##
## list the files in the directory tree
working_files <- list.files ( full.names = TRUE, recursive = TRUE, path = "." )
working_files
##
## read in the file that contains all the TRAINING volunteer ID's
trainVol_ID <- read.table ( "UCI HAR Dataset\\train\\subject_train.txt", col.names = "VolunteerID" )
##
## now extract only the unique Training Volunteer ID's
uTrain_ID <- unique ( trainVol_ID )
##
## Determine the Number of Training Volunteers
trainVol_N <- nrow ( uTrain_ID )
##
## DO the same for TEST volunteers
##
##
## read in the file that contains all the TEST volunteer ID's
testVol_ID <- read.table ("UCI HAR Dataset\\test\\subject_test.txt", col.names = "VolunteerID" )
##
## now extract only the unique values
uTest_ID <- unique ( testVol_ID )
##
## Determine the Number of Test Volunteers
testVol_N <- nrow ( uTest_ID )
##
## Read in the codes of activities performed by the Training Volunteers
trainActivity_ID <- read.table("UCI HAR Dataset\\train\\y_train.txt", col.names = "ActivityCode")
##
## Read in the codes of activities performed by the Test Volunteers
testActivity_ID <- read.table("UCI HAR Dataset\\test\\y_test.txt", col.names = "ActivityCode")
##
## Now we read in the file containing the Training Volunteer data
trainVol_Data <- read.table ( "UCI HAR Dataset\\train\\X_train.txt" )
##
## AND we read in the file containing the Test Volunteer data
testVol_Data <- read.table ( "UCI HAR Dataset\\test\\X_test.txt" )
##
## combine the train data - VolunteerID, Activity, train data
Train_Data <- cbind ( trainVol_ID, trainActivity_ID, trainVol_Data)
##
## combine the test data - VolunteerID, Activity, test data
Test_Data <- cbind ( testVol_ID, testActivity_ID, testVol_Data)
##
## Requirement 1 of the assignment - to merge the test and training datasets
allVol_Data <- rbind ( Train_Data, Test_Data )
##
## In order to assign column names to this dataset for columns 3:563
## First we read in the file that contains the variable names
dataVar_Names <- read.table ( "UCI HAR Dataset\\features.txt" )
##
## transform col 2 into a vector
dataCol_Names <- as.vector (dataVar_Names[,2])
##
## Now we assign the col names - col 2 contains the names
colnames (allVol_Data)[3:563] <- dataCol_Names
##
## this completes the Step # 1 of the assignment
allVol_Data_Q1 <- allVol_Data
##
## Now to extract the only measurements on the "mean" and "standard deviation" for
## each measurement
## first we identify the columns that contain those measurements
varNames_Q2 <- subset ( dataVar_Names, grepl ( "-mean\\(\\)$|-std\\(\\)$|-mean\\(\\)-.|-std\\(\\)-.", V2 ) )
##
## Now we create a vector of col names that we can use in extracting the required data
colNames_Q2 <- as.vector (varNames_Q2[,2])
##
## then we extract the following columns from the Q1 data set (allVol_Data)
## VolunteerID, ActivityCode, and columns defined in the vector colNames_Q2
allVol_Data_Q2 <- allVol_Data[c("VolunteerID","ActivityCode",colNames_Q2)]
allVol_Data_ACode <- allVol_Data[c("VolunteerID","ActivityCode",colNames_Q2)]
##
## This completes Step 2 of the assignment
##
## For Step 3 we need to convert the numeric values in the ActivityCodes column
## to descriptive names as provided in the file activity_labels.txt
##
## let's start by reading in the activity_labels.txt file
##
## read the file that contains all the activity codes and descriptions
activity_labels <- read.table ("UCI HAR Dataset\\activity_labels.txt")
##
## define the column names for this table
colnames(activity_labels) <- c("ActivityCode","ActivityName")
##
## create a vector of activity Codes only
A_Codes <- activity_labels[,"ActivityCode"]
##
## Store the count of activity codes - how many activity code do we have?
AC_Count <- length(A_Codes)
##
## let's convert the activity numeric codes to corresponding activity names
## as provided in the activity_labels.txt file
i <- 1
while (i <= AC_Count) {
  allVol_Data_Q2$ActivityCode [allVol_Data_Q2$ActivityCode == i] <- as.character( activity_labels [ i, "ActivityName" ] )
  i <- i+1
}
##
## and change the column name to match the data as well.
colnames(allVol_Data_Q2)[2] <- c("ActivityName")
##
## so the data set for Q3 is
allVol_Data_Q3 <- data.frame (allVol_Data_Q2)
##
## now for Q4 we can cleanup the varaible names (i.e. column names)
## we will remove the () and clean up the text in preparation of Tidy Data
##
## let's get the column names first
colNames_allVol_Data_Q4 <- names ( allVol_Data_Q3 )
##
## lets tidy these and assign this to a new dataset
colNames_allVol_Data_Q4 <- gsub ( "BodyBody", "Body", colNames_allVol_Data_Q4 )
colNames_allVol_Data_Q4 <- gsub ( "^t", "Time", colNames_allVol_Data_Q4 )
colNames_allVol_Data_Q4 <- gsub ( "^f", "Freq", colNames_allVol_Data_Q4 )
colNames_allVol_Data_Q4 <- gsub ( "\\.mean\\(\\)", "\\-Mean", colNames_allVol_Data_Q4 )
colNames_allVol_Data_Q4 <- gsub ( "\\.mean", "\\-Mean", colNames_allVol_Data_Q4 )
colNames_allVol_Data_Q4 <- gsub ( "\\.std\\(\\)", "\\-Std", colNames_allVol_Data_Q4 )
colNames_allVol_Data_Q4 <- gsub ( "\\.std", "\\-Std", colNames_allVol_Data_Q4 )
colNames_allVol_Data_Q4 <- gsub ( "\\.\\.\\.", "\\-", colNames_allVol_Data_Q4 )
colNames_allVol_Data_Q4 <- gsub ( "\\.\\.", "\\-", colNames_allVol_Data_Q4 )
colNames_allVol_Data_Q4 <- gsub ( "\\-$", "", colNames_allVol_Data_Q4 )
##
## And to complete Step 4
allVol_Data_Q4 <- allVol_Data_Q3
##
## put the updated column names back in a new dataset for Step 4
library(data.table) ## just in case the setnames is not available
## Solution for Step 4
setnames(allVol_Data_Q4, names(allVol_Data_Q4), as.vector(colNames_allVol_Data_Q4))
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
Tidy_Set_Q5 <- matrix ( rep(NA, ncol ( allVol_Data_ACode ) ), ncol = ncol( allVol_Data_ACode ) )
##
## combine the Volunteer ID's (train and test into one big list)
Vol_ID <- rbind (uTest_ID, uTrain_ID)
##
## Total number of volunteers = # of training volunteers + # of test volunteers
totalVol_N <- trainVol_N + testVol_N
##
## Total number of activities  = AC_Count (as defined earlier in the script)
AC_Count
##
## initialize counters for looping through the data
j <- 1
i <- 1
##
## loop through all the volunteers
## while we loop we take each activity performed by this volunteer and
## calculate the mean of all his observations for that activity
while ( i <= totalVol_N ) {
  ##
  ## loop through all the activities for this volunteer
  while ( j <= AC_Count )  {
    ##
    ## VCx_ACx will hold all observations for a specific activity data
    ## for a given volunteer
    VCx_ACx <-subset(allVol_Data_ACode,(VolunteerID==Vol_ID[i,] & ActivityCode==activity_labels[j,1]))
    ##
    ## VCx_ACx_mean - will hold one record that is the mean of all observations
    ## for a given activity for a specific volunteer
    VCx_ACx_mean = colMeans (VCx_ACx)
    ##
    ## the mean record is then appended to the data frame that will hold data
    ## for all volunteers
    Tidy_Set_Q5 <- rbind (Tidy_Set_Q5, VCx_ACx_mean)
    ##
    ## increment the counter for the next activity
    j <- j+1
  }
  ##
  ## increment the counter for the next volunteer
  i <- i+1
  ##
  ## reset the activity code counter
  j <- 1
}
##
## clean up the data frame (remove the dummy observation of NA values)
Tidy_Set_Q5 <- na.omit(Tidy_Set_Q5)
##
## remove rownames introduced by using rbind function
rownames(Tidy_Set_Q5) <- NULL
##
## convert to data frame for sorting and cleaning up...to TIDY SET
Tidy_Set_Q5<- data.frame(Tidy_Set_Q5)
Tidy_Set_Q5 <- Tidy_Set_Q5[order(Tidy_Set_Q5$VolunteerID,Tidy_Set_Q5$ActivityCode),]
##
## change activity codes into activity names
i <- 1
while (i <= nrow(activity_labels)) {
  Tidy_Set_Q5$ActivityCode [Tidy_Set_Q5$ActivityCode == i] <- as.character(activity_labels[i,2])
  i <- i+1
}
##
##
## TidyUP up the column names
setnames(Tidy_Set_Q5, names(Tidy_Set_Q5), as.vector(colNames_allVol_Data_Q4))
##
## the data is sorted by VolunteerID and ActivityName (alphabetillay)
Tidy_Set_Q5 <- Tidy_Set_Q5[order(Tidy_Set_Q5$VolunteerID,Tidy_Set_Q5$ActivityName),]
## remove rownames introduced by sorting
rownames(Tidy_Set_Q5) <- NULL
##
## Finally write out the table to a text file AND a csv delimitted file.
## the resulting txt file is submitted for this assignment
write.table ( Tidy_Set_Q5, file = "Tidy_Set_Q5_table.txt", row.names = FALSE )
##
## the CSV file is generated just as an extra step
write.csv ( Tidy_Set_Q5, file = "Tidy_Set_Q5.csv", row.names = FALSE )

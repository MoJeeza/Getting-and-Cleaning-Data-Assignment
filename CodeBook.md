####This document file name: CodeBook.md
####Author: Mohsin Jessa
####Date: July 24, 2014 V1.2

**This code book describes the variables, the data, and any transformations or work that I performed to clean up the data for this assignment.**

The data for this assignment was part of an experiment, details of which can be found [here.](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones )

The data was downloaded from the following: [Data Source ](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip )


###Original Variable Names     |Revised Descriptive Variable Names
                                        (with column #'s)
-------------------------------|---------------------------------
1. 1 tBodyAcc-mean()-X					TimeBodyAcc-Mean-X
2. -------------------------------|---------------------------------
1. 2 tBodyAcc-mean()-Y					TimeBodyAcc-Mean-Y
2. -------------------------------|---------------------------------
1. 3 tBodyAcc-mean()-Z					TimeBodyAcc-Mean-Z
2. -------------------------------|---------------------------------
1. 4 tBodyAcc-std()-X					TimeBodyAcc-Std-X
2. -------------------------------|---------------------------------
1. 5 tBodyAcc-std()-Y					TimeBodyAcc-Std-Y
2. -------------------------------|---------------------------------
1. 6 tBodyAcc-std()-Z					TimeBodyAcc-Std-Z
2. -------------------------------|---------------------------------
1. 41 tGravityAcc-mean()-X				TimeGravityAcc-Mean-X
2. -------------------------------|---------------------------------
1. 42 tGravityAcc-mean()-Y				TimeGravityAcc-Mean-Y
2. -------------------------------|---------------------------------
1. 43 tGravityAcc-mean()-Z				TimeGravityAcc-Mean-Z
2. -------------------------------|---------------------------------
1. 44 tGravityAcc-std()-X				TimeGravityAcc-Std-X
-------------------------------|---------------------------------
1. 45 tGravityAcc-std()-Y				TimeGravityAcc-Std-Y
2. -------------------------------|---------------------------------
1. 46 tGravityAcc-std()-Z				TimeGravityAcc-Std-Z
-------------------------------|---------------------------------
1. 81 tBodyAccJerk-mean()-X				TimeBodyAccJerk-Mean-X
-------------------------------|---------------------------------
1. 82 tBodyAccJerk-mean()-Y				TimeBodyAccJerk-Mean-Y
1. 83 tBodyAccJerk-mean()-Z				TimeBodyAccJerk-Mean-Z
1. 84 tBodyAccJerk-std()-X				TimeBodyAccJerk-Std-X
1. 85 tBodyAccJerk-std()-Y				TimeBodyAccJerk-Std-Y
1. 86 tBodyAccJerk-std()-Z				TimeBodyAccJerk-Std-Z
1. 121 tBodyGyro-mean()-X				TimeBodyGyro-Mean-X
1. 122 tBodyGyro-mean()-Y				TimeBodyGyro-Mean-Y
1. 123 tBodyGyro-mean()-Z				TimeBodyGyro-Mean-Z
1. 124 tBodyGyro-std()-X				TimeBodyGyro-Std-X
1. 125 tBodyGyro-std()-Y				TimeBodyGyro-Std-Y
1. 126 tBodyGyro-std()-Z				TimeBodyGyro-Std-Z
1. 161 tBodyGyroJerk-mean()-X			TimeBodyGyroJerk-Mean-X
1. 162 tBodyGyroJerk-mean()-Y			TimeBodyGyroJerk-Mean-Y
1. 163 tBodyGyroJerk-mean()-Z			TimeBodyGyroJerk-Mean-Z
1. 164 tBodyGyroJerk-std()-X			TimeBodyGyroJerk-Std-X
1. 165 tBodyGyroJerk-std()-Y			TimeBodyGyroJerk-Std-Y
1. 166 tBodyGyroJerk-std()-Z			TimeBodyGyroJerk-Std-Z
1. 201 tBodyAccMag-mean()				TimeBodyAccMag-Mean
1. 202 tBodyAccMag-std()				TimeBodyAccMag-Std
1. 214 tGravityAccMag-mean()			TimeGravityAccMag-Mean
1. 215 tGravityAccMag-std()				TimeGravityAccMag-Std
1. 227 tBodyAccJerkMag-mean()			TimeBodyAccJerkMag-Mean
1. 228 tBodyAccJerkMag-std()			TimeBodyAccJerkMag-Std
1. 240 tBodyGyroMag-mean()				TimeBodyGyroMag-Mean
1. 241 tBodyGyroMag-std()				TimeBodyGyroMag-Std
1. 253 tBodyGyroJerkMag-mean()			TimeBodyGyroJerkMag-Mean
1. 254 tBodyGyroJerkMag-std()			TimeBodyGyroJerkMag-Std
1. 266 fBodyAcc-mean()-X				FreqBodyAcc-Mean-X
1. 267 fBodyAcc-mean()-Y				FreqBodyAcc-Mean-Y
1. 268 fBodyAcc-mean()-Z				FreqBodyAcc-Mean-Z
1. 269 fBodyAcc-std()-X					FreqBodyAcc-Std-X
1. 270 fBodyAcc-std()-Y					FreqBodyAcc-Std-Y
1. 271 fBodyAcc-std()-Z					FreqBodyAcc-Std-Z
1. 345 fBodyAccJerk-mean()-X			FreqBodyAccJerk-Mean-X
1. 346 fBodyAccJerk-mean()-Y			FreqBodyAccJerk-Mean-Y
1. 347 fBodyAccJerk-mean()-Z			FreqBodyAccJerk-Mean-Z
1. 348 fBodyAccJerk-std()-X				FreqBodyAccJerk-Std-X
1. 349 fBodyAccJerk-std()-Y				FreqBodyAccJerk-Std-Y
1. 350 fBodyAccJerk-std()-Z				FreqBodyAccJerk-Std-Z
1. 424 fBodyGyro-mean()-X				FreqBodyGyro-Mean-X
1. 425 fBodyGyro-mean()-Y				FreqBodyGyro-Mean-Y
1. 426 fBodyGyro-mean()-Z				FreqBodyGyro-Mean-Z
1. 427 fBodyGyro-std()-X				FreqBodyGyro-Std-X
1. 428 fBodyGyro-std()-Y				FreqBodyGyro-Std-Y
1. 429 fBodyGyro-std()-Z				FreqBodyGyro-Std-Z
1. 503 fBodyAccMag-mean()				FreqBodyAccMag-Mean
1. 504 fBodyAccMag-std()				FreqBodyAccMag-Std
1. 516 fBodyBodyAccJerkMag-mean()		FreqBodyAccJerkMag-Mean
1. 517 fBodyBodyAccJerkMag-std()		FreqBodyAccJerkMag-Std
1. 529 fBodyBodyGyroMag-mean()			FreqBodyGyroMag-Mean
1. 530 fBodyBodyGyroMag-std()			FreqBodyGyroMag-Std
1. 542 fBodyBodyGyroJerkMag-mean()		FreqBodyGyroJerkMag-Mean
1. 543 fBodyBodyGyroJerkMag-std()		FreqBodyGyroJerkMag-Std
1. 1. 


In addition: Two new variables were introduced in the Tidy Data Set:

VolunteerID			Volunteer Identifying Number/Code. Unique number to identify each Volunteer (as provided in the raw data 							
				files (y_test.txt and y_train.txt)
ActivityName			Description of Activity (as provided in the raw data file activity_labels.txt)


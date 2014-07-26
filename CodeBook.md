####This document file name: CodeBook.md
####Author: Mohsin Jessa
####Date: July 24, 2014 V1.2

**This code book describes the variables, the data, and any transformations or work that I performed to clean up the data for this assignment.**

The data for this assignment was part of an experiment, details of which can be found [here.](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones )

The data was downloaded from the following: [Data Source ](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip )


Original Variable Names     	|Revised Descriptive Variable Names(with column #'s)
--------------------------------|-----------------------------------------
1 tBodyAcc-mean()-X		   |		TimeBodyAcc-Mean-X
2 tBodyAcc-mean()-Y		   |		TimeBodyAcc-Mean-Y
3 tBodyAcc-mean()-Z		   |		TimeBodyAcc-Mean-Z
4 tBodyAcc-std()-X		   |		TimeBodyAcc-Std-X
5 tBodyAcc-std()-Y		   |		TimeBodyAcc-Std-Y
6 tBodyAcc-std()-Z		   |		TimeBodyAcc-Std-Z
41 tGravityAcc-mean()-X		|		TimeGravityAcc-Mean-X
42 tGravityAcc-mean()-Y		|		TimeGravityAcc-Mean-Y
43 tGravityAcc-mean()-Z		|		TimeGravityAcc-Mean-Z
44 tGravityAcc-std()-X		|		TimeGravityAcc-Std-X
45 tGravityAcc-std()-Y		|		TimeGravityAcc-Std-Y
46 tGravityAcc-std()-Z		|		TimeGravityAcc-Std-Z
81 tBodyAccJerk-mean()-X	|			TimeBodyAccJerk-Mean-X
82 tBodyAccJerk-mean()-Y	|			TimeBodyAccJerk-Mean-Y
83 tBodyAccJerk-mean()-Z	|			TimeBodyAccJerk-Mean-Z
84 tBodyAccJerk-std()-X		|		TimeBodyAccJerk-Std-X
85 tBodyAccJerk-std()-Y		|		TimeBodyAccJerk-Std-Y
86 tBodyAccJerk-std()-Z		|		TimeBodyAccJerk-Std-Z
121 tBodyGyro-mean()-X		|		TimeBodyGyro-Mean-X
122 tBodyGyro-mean()-Y		|		TimeBodyGyro-Mean-Y
123 tBodyGyro-mean()-Z		|		TimeBodyGyro-Mean-Z
124 tBodyGyro-std()-X		|		TimeBodyGyro-Std-X
125 tBodyGyro-std()-Y		|		TimeBodyGyro-Std-Y
126 tBodyGyro-std()-Z		|		TimeBodyGyro-Std-Z
161 tBodyGyroJerk-mean()-X	|		TimeBodyGyroJerk-Mean-X
162 tBodyGyroJerk-mean()-Y	|		TimeBodyGyroJerk-Mean-Y
163 tBodyGyroJerk-mean()-Z	|		TimeBodyGyroJerk-Mean-Z
164 tBodyGyroJerk-std()-X	|		TimeBodyGyroJerk-Std-X
165 tBodyGyroJerk-std()-Y	|		TimeBodyGyroJerk-Std-Y
166 tBodyGyroJerk-std()-Z	|		TimeBodyGyroJerk-Std-Z
201 tBodyAccMag-mean()		|		TimeBodyAccMag-Mean
202 tBodyAccMag-std()		|		TimeBodyAccMag-Std
214 tGravityAccMag-mean()	|		TimeGravityAccMag-Mean
215 tGravityAccMag-std()	|			TimeGravityAccMag-Std
227 tBodyAccJerkMag-mean()	|		TimeBodyAccJerkMag-Mean
228 tBodyAccJerkMag-std()	|		TimeBodyAccJerkMag-Std
240 tBodyGyroMag-mean()		|		TimeBodyGyroMag-Mean
241 tBodyGyroMag-std()		|		TimeBodyGyroMag-Std
253 tBodyGyroJerkMag-mean()	|		TimeBodyGyroJerkMag-Mean
254 tBodyGyroJerkMag-std()	|		TimeBodyGyroJerkMag-Std
266 fBodyAcc-mean()-X		|		FreqBodyAcc-Mean-X
267 fBodyAcc-mean()-Y		|		FreqBodyAcc-Mean-Y
268 fBodyAcc-mean()-Z		|		FreqBodyAcc-Mean-Z
269 fBodyAcc-std()-X		|			FreqBodyAcc-Std-X
270 fBodyAcc-std()-Y		|			FreqBodyAcc-Std-Y
271 fBodyAcc-std()-Z		|			FreqBodyAcc-Std-Z
345 fBodyAccJerk-mean()-X	|		FreqBodyAccJerk-Mean-X
346 fBodyAccJerk-mean()-Y	|		FreqBodyAccJerk-Mean-Y
347 fBodyAccJerk-mean()-Z	|		FreqBodyAccJerk-Mean-Z
348 fBodyAccJerk-std()-X	|			FreqBodyAccJerk-Std-X
349 fBodyAccJerk-std()-Y	|			FreqBodyAccJerk-Std-Y
350 fBodyAccJerk-std()-Z	|			FreqBodyAccJerk-Std-Z
424 fBodyGyro-mean()-X		|		FreqBodyGyro-Mean-X
425 fBodyGyro-mean()-Y		|		FreqBodyGyro-Mean-Y
426 fBodyGyro-mean()-Z		|		FreqBodyGyro-Mean-Z
427 fBodyGyro-std()-X		|		FreqBodyGyro-Std-X
428 fBodyGyro-std()-Y		|		FreqBodyGyro-Std-Y
429 fBodyGyro-std()-Z		|		FreqBodyGyro-Std-Z
503 fBodyAccMag-mean()		|		FreqBodyAccMag-Mean
504 fBodyAccMag-std()		|		FreqBodyAccMag-Std
516 fBodyBodyAccJerkMag-mean()|		FreqBodyAccJerkMag-Mean
517 fBodyBodyAccJerkMag-std()	|	FreqBodyAccJerkMag-Std
529 fBodyBodyGyroMag-mean()		|	FreqBodyGyroMag-Mean
530 fBodyBodyGyroMag-std()		|	FreqBodyGyroMag-Std
542 fBodyBodyGyroJerkMag-mean()|		FreqBodyGyroJerkMag-Mean
543 fBodyBodyGyroJerkMag-std()|		FreqBodyGyroJerkMag-Std



In addition: Two new variables were introduced in the Tidy Data Set:

VolunteerID			Volunteer Identifying Number/Code. Unique number to identify each Volunteer (as provided in the raw data 							
				files (y_test.txt and y_train.txt)
ActivityName			Description of Activity (as provided in the raw data file activity_labels.txt)


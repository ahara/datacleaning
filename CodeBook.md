Code Book
============

This file describes variables in tidy dataset.
------------

**activity**		*string*

Contains label describing one from six activities:
- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING           
- STANDING
- LAYING

	
**subject**			*integer*

Number indicating on a person who provided measurements:

1..30

**tBodyAcc_mean|std-X|Y|Z
tGravityAcc_mean|std-X|Y|Z
tBodyAccJerk_mean|std-X|Y|Z
tBodyGyro_mean|std-X|Y|Z
tBodyGyroJerk_mean|std-X|Y|Z
tBodyAccMag_mean|std
tGravityAccMag_mean|std
tBodyAccJerkMag_mean|std
tBodyGyroMag_mean|std
tBodyGyroJerkMag_mean|std
fBodyAcc_mean|std-X|Y|Z
fBodyAccJerk_mean|std-X|Y|Z
fBodyGyro_mean|std-X|Y|Z
fBodyAccMag_mean|std
fBodyAccJerkMag_mean|std
fBodyGyroMag_mean|std
fBodyGyroJerkMag_mean|std**			*double*

Variables with measurements gathered from sensors.
Their names describing them in such format that first letter
means time domain (t) or frequency domain (f). Then we have word
Body or Gravity which describes with what kind measurement we deal.
After that there is description of sensor (Acc - accelerometer, Gyro - gyroscope)
and the type of measurement. Then we have underscore and one from possible values
from measurement frame - mean or standard deviation. Some variables also has X, Y
or Z at the end of their names. Because measurements were made by 3-axis sensors
it indicates with which axes measurement is related.

All these variables are aggregated averages values for pair subject and activity.
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

**tBodyAcc_mean|std-X|Y|Z**			*double*

**tGravityAcc_mean|std-X|Y|Z**			*double*

**tBodyAccJerk_mean|std-X|Y|Z**			*double*

**tBodyGyro_mean|std-X|Y|Z**			*double*

**tBodyGyroJerk_mean|std-X|Y|Z**			*double*

**tBodyAccMag_mean|std**			*double*

**tGravityAccMag_mean|std**			*double*

**tBodyAccJerkMag_mean|std**			*double*

**tBodyGyroMag_mean|std**			*double*

**tBodyGyroJerkMag_mean|std**			*double*

**fBodyAcc_mean|std-X|Y|Z**			*double*

**fBodyAccJerk_mean|std-X|Y|Z**			*double*

**fBodyGyro_mean|std-X|Y|Z**			*double*

**fBodyAccMag_mean|std**			*double*

**fBodyAccJerkMag_mean|std**			*double*

**fBodyGyroMag_mean|std**			*double*

**fBodyGyroJerkMag_mean|std**			*double*

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
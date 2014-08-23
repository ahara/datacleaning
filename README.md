datacleaning
============

Repo for Project 1 in Getting and Cleaning Data Course

Repo contains two essential files:
- run_analysis.R
- and CodeBook.md


run_analysis.R
--------------

Note: Script should be started in directory with files with data.

Script reads data from 'test' and 'train' directories and
combine all four files (X_train.txt, y_train.txt, X_test.txt, y_test.txt)
with data into one dataset. Also reads names of the features from features.txt
file from current directory and set proper names for columns in the dataset.

Then columns which contain features different than mean and standard deviation
are dropped.

Also based on activity_labels.txt file numbers which describe activities are
replaced by human-friendly labels.

After that script changes column name to be more R-friendly - removes round 
brackets and replaces minuses/dashes by underscores.

Then based on subject_train.txt and subject_test.txt files (from 'test' and
'train' directories) to the dataset is added new column which stores information
about person who provided measurements.

Finally, all data from dataset are grouped by activity and subject. For each
aggregated feature is counted mean value. This operation produces new dataset
which is stored in tidy_dataset variable as well as saved into tidy_dataset.txt
file.


CodeBook.md
--------------
This file contains description for the data provided in tidy_dataset.txt produced
by run_analysis.R script.
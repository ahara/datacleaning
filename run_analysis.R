#######################################################################
# Merging the training and the test sets to create one data set       #
#######################################################################
# Read training data
train_x <- read.table("train/X_train.txt")
train_y <- read.table("train/y_train.txt")
# Read test data
test_x <- read.table("test/X_test.txt")
test_y <- read.table("test/y_test.txt")
# Read feature names
features <- read.table("features.txt")
# Set column headers for training and test data
names(train_x) <- features[,2]
names(train_y) <- c("activity")
names(test_x) <- features[,2]
names(test_y) <- c("activity")
# Combine data
dataset <- rbind(cbind(train_x, train_y), cbind(test_x, test_y))

#######################################################################
# Extracting only the measurements on the mean and standard deviation #
#######################################################################
# Get list of column for mean and std (with keeping activity)
col_nums <- grep("mean\\(|std\\(|activity", names(dataset))
dataset <- dataset[, col_nums]

#######################################################################
# Using descriptive activity names                                    #
#######################################################################
# Read activity names from file
activity_names <- read.table("activity_labels.txt")
# Set column names
names(activity_names) <- c("activity", "activityName")
# Use factor type to set activity labels in data set
dataset$activity <- factor(dataset$activity, levels=activity_names$activity,
                           labels= activity_names$activityName)

#######################################################################
# Appropriately labels the data set with descriptive variable names   #
#######################################################################
# Mostly done in the first step to easier accessing columns
# Remove/Replace minuses and braces from column names
names(dataset) <- sub("-", "_", names(dataset))
names(dataset) <- sub("\\(\\)", "", names(dataset))

#######################################################################
# Creating tidy data set with the average of each variable            #
# for each activity and each subject                                  #
#######################################################################
train_sub <- read.table("train/subject_train.txt")
test_sub <- read.table("test/subject_test.txt")
dataset$subject <- rbind(train_sub, test_sub)[, 1]
tidy_dataset <- aggregate(data.matrix(dataset[, 1:65]) ~ activity+subject,
                          data=dataset, mean)

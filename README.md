# Getting and Cleaning Data Course Project

NOTE: This repository does not contain the original dataset. In order to run the analysis script, it is required to have the original data set in the same working directory.

The run_analysis.R does the following.

1. Merges the training and the test sets to create one data set.

  It does so by reading training data from train/X_train.txt, train/y_train.txt, train/subject_train.txt and testing data from test/X_train.txt, test/y_train.txt, test/subject_train.txt; then merge the data using rbind() and cbind()

2. Extracts only the measurements on the mean and standard deviation for each measurement.

  List of features are described in 'features.txt'. Features with mean() and std() in their names are those to be extracted. We use filter() method of dplyr package to filter the merged data set.

3. Uses descriptive activity names to name the activities in the data set

  Descriptive activity names are listed in 'activity_labels.txt'. Therefore, we read that file in and map corresponding activity names to their label.

4. Appropriately labels the data set with descriptive variable names.

  Variable names of the data set are V1,V2... when they are read from the files. We use names() method along with features data read from 'features.txt' to set variable names. Furthermore, based on 'features_info.txt', we can parse the abbreviated name into full descriptive variable name

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

  In order to calculate the average of each variable for each activity and each subject, we group the data set by subject and activity, then calculate the mean for each group. Finally, we export the dataset to 'summarized-data.txt' using write.table()

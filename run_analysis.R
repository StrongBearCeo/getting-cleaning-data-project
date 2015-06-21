# Read training data
training.set <- read.table('train//X_train.txt')
training.activity.labels <- read.table('train//y_train.txt')
training.subjects <- read.table('train//subject_train.txt')

# Read test data
test.set <- read.table('test//X_test.txt')
test.activity.labels <- read.table('test//y_test.txt')
test.subjects <- read.table('test//subject_test.txt')

# merge training and test data
all.sets <- rbind(training.set, test.set)
all.subjects <- rbind(training.subjects, test.subjects)
all.activity.labels <- rbind(training.activity.labels, test.activity.labels)

# Extracts only the measurements on the mean and standard deviation for each measurement. 
features <- read.table('features.txt')
library(dplyr)
names(all.sets) <- features$V2  # set variable names
mean.std.features <- filter(features, grepl("mean\\(\\)|std\\(\\)", features$V2))
filtered.sets <- all.sets[, mean.std.features$V1]

# merge all data
merged.data <- cbind(all.subjects, all.activity.labels, filtered.sets)

# Appropriately labels the data set with descriptive variable names.
names(merged.data) <- c("Subject", "Activity", names(filtered.sets))

# Uses descriptive activity names to name the activities in the data set
activity.labels <- read.table('activity_labels.txt')
merged.data$Activity <- activity.labels[all.activity.labels$V1,2]

# creates a second, independent tidy data set 
# with the average of each variable 
# for each activity and each subject.
summarized.data <- merged.data %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))

# Export to file
write.table(summarized.data, file = 'summarized-data.txt', row.name=FALSE)

# generate variable explaination for code book
old.name <- names(merged.data)
names(merged.data)<-gsub("^t", "time of ", names(merged.data))
names(merged.data)<-gsub("^f", "frequency of ", names(merged.data))
names(merged.data)<-gsub("Acc", "Accelerometer ", names(merged.data))
names(merged.data)<-gsub("Gyro", "Gyroscope ", names(merged.data))
names(merged.data)<-gsub("Mag", "Magnitude ", names(merged.data))
names(merged.data)<-gsub("BodyBody", "Body", names(merged.data))
names(merged.data)<-gsub("Body", "Body ", names(merged.data))
names(merged.data)<-gsub("Jerk", "Jerk ", names(merged.data))
names(merged.data)<-gsub("Gravity", "Gravity ", names(merged.data))
names(merged.data)<-gsub("-mean\\(\\)", "Mean ", names(merged.data))
names(merged.data)<-gsub("-std\\(\\)", "Standard Deviation ", names(merged.data))
new.name <- names(merged.data)
codebook.variables <- data.frame(abbr=old.name, explain=new.name)

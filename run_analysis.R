# Load: data column names
features <- read.table("~/Downloads/UCI HAR Dataset/features.txt", quote="\"")

# Load: activity labels
activity_labels <- read.table("~/Downloads/UCI HAR Dataset/activity_labels.txt", quote="\"")

# Load and process X_test and y_test data
X_test <- read.table("~/Downloads/UCI HAR Dataset/test/X_test.txt", quote="\"")
y_test <- read.table("~/Downloads/UCI HAR Dataset/test/y_test.txt", quote="\"")
subject_test <- read.table("~/Downloads/UCI HAR Dataset/test/subject_test.txt", quote="\"")

# Load and process X_train and y_train data
X_train <- read.table("~/Downloads/UCI HAR Dataset/train/X_train.txt", quote="\"")
y_train <- read.table("~/Downloads/UCI HAR Dataset/train/y_train.txt", quote="\"")
subject_train <- read.table("~/Downloads/UCI HAR Dataset/train/subject_train.txt", quote="\"")

# Load activity labels
y_train[,2] <- activity_labels[y_train[,1],2]
names(y_train) <- c("Activity_ID", "Activity_Label")
names(subject_train) <- "subject"

y_test[,2] = activity_labels[y_test[,1],2]
names(y_test) = c("Activity_ID", "Activity_Label")
names(subject_test) = "subject"

# Extract only the measurements on the mean and standard deviation for each measurement.
extract_features <- grepl("mean|std", features[,2])

# Merge
merged_x <- rbind(X_train, X_test)
merged_y <- rbind(y_train, y_test)
merged_subject <- rbind(subject_train, subject_test)
names(merged_x) <- features[,2]

# Extract only the measurements on the mean and standard deviation for each measurement
merged_x <- merged_x[,extract_features]

# Merge test and train data
data <- cbind(merged_subject, merged_y, merged_x)

# Apply mean function to dataset using aggregate function
tidy_data<-aggregate(.~subject+Activity_Label,data=data[,-2],mean)

write.table(tidy_data, file = "~/Downloads/tidy_data.txt", row.name=FALSE, sep=";")








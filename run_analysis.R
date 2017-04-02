library(reshape2)

# Read the source files
if(!file.exists('./data')){dir.create('./data')}
fileUrl <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
download.file(fileUrl,destfile='./data/adlData.zip')
unzip('./data/adlData.zip')

# Get the label and feature details
activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt')  # 6 categories: walking, sitting etc in V2, V1 = 1 to 6
features <- read.table('./UCI HAR Dataset/features.txt')
colnames(activity_labels) <- c('activityId', 'activityType')    # adding activity type to each row improves readability

# Load and name the training dataset details
X_train <- read.table('./UCI HAR Dataset/train/X_train.txt')
y_train <- read.table('./UCI HAR Dataset/train/y_train.txt')
subject_train <- read.table('./UCI HAR Dataset/train/subject_train.txt')
colnames(X_train) <- features[, 2]
colnames(y_train) <- 'activityId'
colnames(subject_train) <- 'subjectId'

# Load and name the test dataset details
X_test <- read.table('./UCI HAR Dataset/test/X_test.txt')
y_test <- read.table('./UCI HAR Dataset/test/y_test.txt')
subject_test <- read.table('./UCI HAR Dataset/test/subject_test.txt')
colnames(X_test) <- features[, 2]
colnames(y_test) <- 'activityId'
colnames(subject_test) <- 'subjectId'

# Merge the test and training datasets
train_dataset <- cbind(subject_train, y_train, X_train)
test_dataset <- cbind(subject_test, y_test, X_test)
merged_dataset <- rbind(train_dataset, test_dataset)

# Column names from the dataset
col_names <- colnames(merged_dataset)

# Use the column names to only select the columns that end in mean, std, or Id 
mean_std_dataset <- merged_dataset[grep('.*mean.*|.*std.*|.*Id', col_names)]

# Rename the column names to capitalise Mean and Std, and remove non-alphabetic characters
names(mean_std_dataset) <- sub('-mean', 'Mean', names(mean_std_dataset))
names(mean_std_dataset) <- sub('-std', 'Std', names(mean_std_dataset))
names(mean_std_dataset) <- gsub('[]()-', '', names(mean_std_dataset))

# Introduce the activity names provided from source into the merged data set
dataset_with_activities <- merge(mean_std_dataset, activity_labels, by='activityId', all.x=TRUE)

# Create the second, independent dataset and aggregate the mean of each variable for each activity
second_tidy_set <- aggregate(. ~subjectId + activityId, dataset_with_activities, FUN=mean, na.rm=TRUE)
write.table(second_tidy_set, 'independent_tidy_set.txt', row.name=FALSE)


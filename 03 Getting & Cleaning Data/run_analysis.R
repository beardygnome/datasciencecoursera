library(reshape2)
library(dplyr)

#Set the working directory to the UCI HAR Dataset directory before running the script
setwd('/home/philip/Documents/Coursera/The Data Science Specialization/03 Getting and Cleaning Data/Course Project/UCI HAR Dataset/')

#Read in the measurement labels
features <- read.table("features.txt")

#Drop all column labels not containing "mean() or std()
features <- features[grep("mean\\(\\)|std\\(\\)", features$V2), ]

#Tidy up the column labels to remove "-", "(" and ")" and camelCase the labels
features$V2 <- gsub("-mean\\(\\)", "Mean", features$V2)
features$V2 <- gsub("-std\\(\\)", "Std", features$V2)
features$V2 <- gsub("-", "", features$V2)

#Create a vector of the column numbers to keep
keep_cols <- features[, 1]

#Import the test subjects
test_subjects <- read.table("test/subject_test.txt")
names(test_subjects) <- "Subject"

#Import the test activities
test_activities <- read.table("test/y_test.txt")
names(test_activities) <- "Activity_Code"

#Import the test measurements and keep only the "columns"mean()" and "std()" columns
test_data <- read.table("test/X_test.txt")
test_data <- test_data[, keep_cols]
#Add meaningful column names
names(test_data) <- features$V2

#Add subject and activity labels to the observations
test_combined <- cbind(test_subjects, test_activities, test_data)


#Import the training subjects
train_subjects <- read.table("train/subject_train.txt")
names(train_subjects) <- "Subject"

#Import the training activities
train_activities <- read.table("train/y_train.txt")
names(train_activities) <- "Activity_Code"

#Import the training measurements and keep only the "columns"mean()" and "std()" columns
train_data <- read.table("train/X_train.txt")
train_data <- train_data[, keep_cols]
#Add meaningful column names
names(train_data) <- features$V2

#Add subject and activity labels to the observations
train_combined <- cbind(train_subjects, train_activities, train_data)

#Combine the test and training data into a single data frame
all_data <- rbind(test_combined, train_combined)

#Read in the activity labels
activities <- read.table("activity_labels.txt")

#Merge the activity labels on to the main data frame...
merge(activities, all_data, by.x="V1", by.y="Activity_Code") %>%
#Drop the activity code (V1) and rename V2 to Activity...
    select(-V1) %>% rename(Activity=V2) %>%
#Melt the data frame, keeping Activity and Subject as id variables...
    melt(id.vars = c("Activity", "Subject"), variable.name="Variable") %>%
#Group by Activity, Subject and Variable...
    group_by(Activity, Subject, Variable) %>%
#Summarise by these and calculate the mean for each variable...
    summarise(Mean=mean(value)) %>%
#Unmelt the data frame to get back to one row per activity per subject
    dcast(Activity + Subject ~ Variable, value.var="Mean") %>%
#Finally, write out the result
    write.table("Means.txt", row.names=FALSE)
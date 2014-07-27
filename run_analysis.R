setwd("~/Dropbox/R/Learning/GettingAndCleaning/Project")
require(reshape2)


# Read-in features and labels
Activity = read.table("data/activity_labels.txt", col.names = c("Activity.Code", "Activity.Levels"))
Features = read.table("data/features.txt", col.names = c("Features.Code", "Features.Labels"))

# Find out which Features comprise means and std's
Features.mean = grep("mean()", Features$Features.Labels, value=F, fixed=T) 
Features.std  = grep("std()", Features$Features.Labels, value=F, fixed=T)

# Read-in test files

subject_test    = read.table("data/test/subject_test.txt", col.names = "Subject")
y_test          = read.table("data/test/y_test.txt", col.names = "Activity")
X_test          = read.table("data/test/X_test.txt", col.names = Features$Features.Labels)

# Separate required mean and std variables
X_test.mean     = X_test[, Features.mean]
X_test.std      = X_test[, Features.std]

# Merge test files into 1

Test.df = data.frame(subject_test, y_test, X_test.mean, X_test.std)

# Read-in train files

subject_train    = read.table("data/train/subject_train.txt", col.names = "Subject")
y_train          = read.table("data/train/y_train.txt", col.names = "Activity")
X_train          = read.table("data/train/X_train.txt", col.names = Features$Features.Labels)

# Separate required mean and std variables
X_train.mean     = X_train[, Features.mean]
X_train.std      = X_train[, Features.std]

# Merge train files into 1

Train.df = data.frame(subject_train, y_train, X_train.mean, X_train.std)

# Merge both files

Total.df = data.frame(rbind(Test.df, Train.df))

# melt the Total file to extract means and sds
Total.melt = melt(Total.df, id.vars = c("Subject", "Activity"))

# cast the dataframe with the means
Tidy.df = dcast(Total.melt, Activity~variable, mean)

# Assign levels to Activity
Tidy.df$Activity = factor(Tidy.df$Activity, label=Activity$Activity.Levels)

# Output tidy dataset
write.table(Tidy.df, file = "data/TidyData.txt", append = F, quote = F, sep = " ", row.names = F, col.names = T)

# Get column names for code book
Tidy.df.colnames = colnames(Tidy.df)

# Write column names for code book
write(Tidy.df.colnames, file="data/4CodeBook.txt", append=F)

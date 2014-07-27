---
title: "CodeBook"
author: "Manuel Gonzalez"
date: "July 26, 2014"
output: html_document
---
Activity has been coded appropriately.

The other variables contain only the averages observed across both data sets.
Each variable has the following structure:
t or f: time-domain or Fourier Transform.
Body or Gravity: acceleration source body or gravity.
Acc or Gyro: linear acceleration or angular velocity.
Jerk or Mag: jerk measure or magnitude.
.mean or .std: the mean or standard deviation (note: these are means of the means and means of the stds).
...X, ...Y or ...Z: the spatial axis.

Hence, tBodyAcc.mean...X includes the mean of the means of the time-domain signal due to the body for the linear acceleration in the X spatial axis.  tBodyAcc.mean...Y has the same information for the Y spatial axis and tBodyAcc.std...X has the mean of the standard deviations in the X spatial axis.

The full list of variables is:
tBodyAcc.mean...X
tBodyAcc.mean...Y
tBodyAcc.mean...Z
tGravityAcc.mean...X
tGravityAcc.mean...Y
tGravityAcc.mean...Z
tBodyAccJerk.mean...X
tBodyAccJerk.mean...Y
tBodyAccJerk.mean...Z
tBodyGyro.mean...X
tBodyGyro.mean...Y
tBodyGyro.mean...Z
tBodyGyroJerk.mean...X
tBodyGyroJerk.mean...Y
tBodyGyroJerk.mean...Z
tBodyAccMag.mean..
tGravityAccMag.mean..
tBodyAccJerkMag.mean..
tBodyGyroMag.mean..
tBodyGyroJerkMag.mean..
fBodyAcc.mean...X
fBodyAcc.mean...Y
fBodyAcc.mean...Z
fBodyAccJerk.mean...X
fBodyAccJerk.mean...Y
fBodyAccJerk.mean...Z
fBodyGyro.mean...X
fBodyGyro.mean...Y
fBodyGyro.mean...Z
fBodyAccMag.mean..
fBodyBodyAccJerkMag.mean..
fBodyBodyGyroMag.mean..
fBodyBodyGyroJerkMag.mean..
tBodyAcc.std...X
tBodyAcc.std...Y
tBodyAcc.std...Z
tGravityAcc.std...X
tGravityAcc.std...Y
tGravityAcc.std...Z
tBodyAccJerk.std...X
tBodyAccJerk.std...Y
tBodyAccJerk.std...Z
tBodyGyro.std...X
tBodyGyro.std...Y
tBodyGyro.std...Z
tBodyGyroJerk.std...X
tBodyGyroJerk.std...Y
tBodyGyroJerk.std...Z
tBodyAccMag.std..
tGravityAccMag.std..
tBodyAccJerkMag.std..
tBodyGyroMag.std..
tBodyGyroJerkMag.std..
fBodyAcc.std...X
fBodyAcc.std...Y
fBodyAcc.std...Z
fBodyAccJerk.std...X
fBodyAccJerk.std...Y
fBodyAccJerk.std...Z
fBodyGyro.std...X
fBodyGyro.std...Y
fBodyGyro.std...Z
fBodyAccMag.std..
fBodyBodyAccJerkMag.std..
fBodyBodyGyroMag.std..
fBodyBodyGyroJerkMag.std..

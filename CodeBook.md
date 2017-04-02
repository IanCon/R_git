# Human Activity Recognition - Data collected from Smartphones' Accelerometers

## Description
The data was collected from a 10th December 2012 data set available at UCI Machine Learning Repository:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Usage

second_tidy_set

## Format

A data frame with 180 observations on 82 variables

[, 1] Subject Id
[, 2] Activity Type - 6 levels e.g. "LAYING", "SITTING", etc
[, 3] Activity ID - 1-6

Followed by 79 variables broken down into X, Y and Z axes, standard deviation and mean values
summarised by Subject and Activity Type.

## Examples

head(second_tidy_set[, 1:6], n=3)

subjectId activityType ActivityId tBodyAccMeanX tBodyAccMeanY tBodyAccMeanZ
        1       LAYING          6     0.2215982   -0.04051395    -0.1132036
        2       LAYING          6     0.2813734   -0.01815874    -0.1072456
        3       LAYING          6     0.2755169   -0.01895568    -0.1013005
        
        
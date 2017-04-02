# Create a tidy data set\

## Step 1
The first section copies the source file from the URL to the local working directory and unzips it

Having used the file explorer to see what files are in the unzipped directory, the files are
used to create some R data sets for processing.

## Step 2
The second section extracts the activity labels and feature names of the source data so that
they can be used to name columns and rows in the data set that will be created

## Step 3
In the third section the row and column (X and Y coordinates) plus subject details of both
the test and training datasets from the source are copied into R structures, and the feature
names, activity and subject ids are used to rename the default R structure naming.

## Step 4
In the fourth section the test and training datasets are then combined, and the column names
are used to rename the default names used by R.

## Step 5
The column names are then used to extract out of the complete dataset only the mean, 
standard deviation and id rows.

## Step 6
The column names are renamed to follow tidy data set requirements - i.e. camel case, and any
non-alphabetic characters ( []()- ) are removed.

## Step 7
A new data set is created from the list of activity labels and the source data on the common column: activity_id.

## Step 8
As per the assignment, an second tidy data set is then created from the first tidy data set, by using the activity to 
aggregate the average (mean) of the standard deviation and the mean values and grouping the averages by the subject and activity.

# Create a tidy data set

## Step 1 
The first section copies the source file from the URL to the local working directory and unzips it
 
Having used the file explorer to see what files are in the unzipped directory, the various files are 
used to create some R data sets for processing. 
 
## Step 2 
The second section creates data frames of the activity labels and feature names for later use
 
## Step 3 
In the third section the row and column (X and Y coordinates) plus subject details of both 
the training dataset from the source are copied into R structures, and the feature 
names, activity and subject ids are used to rename the default R naming. 
 
## Step 4 
In the fourth section the test datasets are copied columns renamed 
... and then the test and training datsets are combined /merged

## Step 5 
The column names are then used to extract out of the complete dataset only the mean,  
standard deviation and id columns. 
 
## Step 6 
The column names are renamed to follow tidy data set requirements - i.e. camel case, and any 
non-alphabetic characters []()- are removed. 
 
## Step 7 
Add the activity name to aid readability   
 
## Step 8 
As per the assignment, create a second tidy data set by averaging the aggregated mean and standard deviation values and grouping these by subject and activity. 


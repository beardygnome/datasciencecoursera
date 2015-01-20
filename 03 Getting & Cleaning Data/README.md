#Explanation of run_analysis.R

##Running the script
In order to run the script, the working directory stated on line 5 must be
changed to point at the downloaded 'UCI HAR Dataset' directory.  All files are
read in and written out relative to this directory structure.

##Choosing the relevant variables
I decided that I was going to include varaiables that were the mean or
standard deviation of a signal and exclude the the signal averages calculated on
the angle() variable.  This meant that I only kept variables that included
'mean()' or 'std()' in the variable name, so I started by filtering these out of
the list of 561 varibale names and tidying them up by camelCasing them and
removing the parentheses.

##Selecting the relevant variables in the dataset
Having filtered out the relevant variables from the list of varaible names, I
also had the relevent column numbers for the dataset, so I used those to extract
the relevant columns from the test dataset.  I then added the subject and
activity lebels to the test dataset, so that I had everything I needed, before
repeating the whole process with the training dataset.

##Combining the two datasets
Having imported the two datasets, extracted the measurements I wanted and added
the labels, I combined the two into a single dataset and replaced the numeric
activity labels with their descriptive versions.

##Creating the means per subject per activity
The final step of the process was to melt the dataset into a narrow dataset,
using the subject and activity labels as IDs and having all variable names in
one column and all values in another.  This allowed me to group the dataset by
subject and activity, calculate all the means of the value column in one go,
before casting the narrow dataset back to a wide one, with one row per subject
per activity and one column for each of the means I had calculated, before
writing the data out to a file.

##Why the dataset is tidy
The final dataset is tidy because each subject-activity combination is shown on
a single row of the dataset and each of the calculated means is shown in its own
column of the dataset.

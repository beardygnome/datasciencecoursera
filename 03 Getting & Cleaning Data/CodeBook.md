#Code book for Means.txt

The initial dataset used for to create Means.txt is data selected from
accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These
time domain signals (prefix 't' to denote time) were captured at a constant rate
of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass
Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly,
the acceleration signal was then separated into body and gravity acceleration
signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth
filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in
time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the
magnitude of these three-dimensional signals were calculated using the Euclidean
norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag,
tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals
producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag,
fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain
signals).

These readings were taken from 30 subjects whilst they undertook each of 6
activities.

These signals were used to estimate variables of the feature vector for each
pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are:

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values.
iqr(): Interquartile range
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal
kurtosis(): kurtosis of the frequency domain signal
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

Means.txt is a summarised version of the dataset.  The mean value of each mean
and standard deviation measurement is shown for each of the subject-activity
combinations.  The full list of columns in the dataset is:

Column Name | Description
:---------- | :----------
Activity | The activity being performed
Subject | The idenifier of the subject
tBodyAccMeanX | The mean of the body acceleration signal means in the X direction
tBodyAccMeanY | The mean of the body acceleration signal means in the Y direction
tBodyAccMeanZ | The mean of the body acceleration signal means in the Z direction
tBodyAccStdX | The mean of the body acceleration signal standard devaiations in the X direction
tBodyAccStdY | The mean of the body acceleration signal standard devaiations in the Y direction
tBodyAccStdZ | The mean of the body acceleration signal standard devaiations in the Y direction
tGravityAccMeanX | The mean of the gravity acceleration signal means in the X direction
tGravityAccMeanY | The mean of the gravity acceleration signal means in the Y direction
tGravityAccMeanZ | The mean of the gravity acceleration signal means in the Y direction
tGravityAccStdX | The mean of the gravity acceleration signal standard devaiations in the X direction
tGravityAccStdY | The mean of the gravity acceleration signal standard devaiations in the X direction
tGravityAccStdZ | The mean of the gravity acceleration signal standard devaiations in the X direction
tBodyAccJerkMeanX | The mean of the body linear acceleration signal means in the X direction
tBodyAccJerkMeanY | The mean of the body linear acceleration signal means in the Y direction
tBodyAccJerkMeanZ | The mean of the body linear acceleration signal means in the Z direction
tBodyAccJerkStdX | The mean of the body linear acceleration signal standard deviations in the X direction
tBodyAccJerkStdY | The mean of the body linear acceleration signal standard deviations in the Y direction
tBodyAccJerkStdZ | The mean of the body linear acceleration signal standard deviations in the Z direction
tBodyGyroMeanX | The mean of the body angular velocity signal means in the X direction
tBodyGyroMeanY | The mean of the body angular velocity signal means in the Y direction
tBodyGyroMeanZ | The mean of the body angular velocity signal means in the Z direction
tBodyGyroStdX | The mean of the body angular velocity signal standard deviations in the X direction
tBodyGyroStdY | The mean of the body angular velocity signal standard deviations in the Y direction
tBodyGyroStdZ | The mean of the body angular velocity signal standard deviations in the Z direction
tBodyGyroJerkMeanX | The mean of the body angular velocity Jerk signal means in the X direction
tBodyGyroJerkMeanY | The mean of the body angular velocity Jerk signal means in the Y direction
tBodyGyroJerkMeanZ | The mean of the body angular velocity Jerk signal means in the Z direction
tBodyGyroJerkStdX | The mean of the body angular velocity Jerk signal standard deviations in the X direction
tBodyGyroJerkStdY | The mean of the body angular velocity Jerk signal standard deviations in the Y direction
tBodyGyroJerkStdZ | The mean of the body angular velocity Jerk signal standard deviations in the Z direction
tBodyAccMagMean | The mean of the body acceleration magnitude means
tBodyAccMagStd | The mean of the body acceleration magnitude standard deviations
tGravityAccMagMean | The mean of the gravity acceleration magnitude means
tGravityAccMagStd | The mean of the gravity acceleration magnitude standard deviations
tBodyAccJerkMagMean | The mean of the body acceleration Jerk magnitude means
tBodyAccJerkMagStd | The mean of the body acceleration Jerk magnitude standard deviations
tBodyGyroMagMean | The mean of the body angular velocity magnitude means
tBodyGyroMagStd | The mean of the body angular velocity magnitude standard deviations
tBodyGyroJerkMagMean | The mean of the body angular velocity Jerk magnitude means
tBodyGyroJerkMagStd | The mean of the body angular velocity Jerk magnitude standard deviations
fBodyAccMeanX | The mean of the Fast Fourier Transform of the body acceleration signal means in the X direction
fBodyAccMeanY | The mean of the Fast Fourier Transform of the body acceleration signal means in the Y direction
fBodyAccMeanZ | The mean of the Fast Fourier Transform of the body acceleration signal means in the Z direction
fBodyAccStdX | The mean of the Fast Fourier Transform of the body acceleration signal standard deviations in the X direction
fBodyAccStdY | The mean of the Fast Fourier Transform of the body acceleration signal standard deviations in the X direction
fBodyAccStdZ | The mean of the Fast Fourier Transform of the body acceleration signal standard deviations in the X direction
fBodyAccJerkMeanX | The mean of the Fast Fourier Transform of the body acceleration Jerk signal means in the X direction
fBodyAccJerkMeanY | The mean of the Fast Fourier Transform of the body acceleration Jerk signal means in the Y direction
fBodyAccJerkMeanZ | The mean of the Fast Fourier Transform of the body acceleration Jerk signal means in the Z direction
fBodyAccJerkStdX | The mean of the Fast Fourier Transform of the body acceleration Jerk signal standard deviations in the X direction
fBodyAccJerkStdY | The mean of the Fast Fourier Transform of the body acceleration Jerk signal standard deviations in the Y direction
fBodyAccJerkStdZ | The mean of the Fast Fourier Transform of the body acceleration Jerk signal standard deviations in the Z direction
fBodyGyroMeanX | The mean of the Fast Fourier Transform of the body angular velocity signal means in the X direction
fBodyGyroMeanY | The mean of the Fast Fourier Transform of the body angular velocity signal means in the Y direction
fBodyGyroMeanZ | The mean of the Fast Fourier Transform of the body angular velocity signal means in the Z direction
fBodyGyroStdX | The mean of the Fast Fourier Transform of the body angular velocity signal standrad deviations in the X direction
fBodyGyroStdY | The mean of the Fast Fourier Transform of the body angular velocity signal standard deviations in the Y direction
fBodyGyroStdZ | The mean of the Fast Fourier Transform of the body angular velocity signal standard deviations in the Y direction
fBodyAccMagMean | The mean of the Fast Fourier Transform of the body accelertion signal means
fBodyAccMagStd | The mean of the Fast Fourier Transform of the body acceleration signal standard deviations
fBodyBodyAccJerkMagMean | The mean of the Fast Fourier Transform of the body acceleration Jerk magnitude means
fBodyBodyAccJerkMagStd | The mean of the Fast Fourier Transform of the body acceleration Jerk magnitude standard deviations
fBodyBodyGyroMagMean | The mean of the Fast Fourier Transform of the body angular velocity magnitude means
fBodyBodyGyroMagStd | The mean of the Fast Fourier Transform of the body angular velocity magnitude standard deviations
fBodyBodyGyroJerkMagMean | The mean of the Fast Fourier Transform of the body angular velocity Jerk magnitude means
fBodyBodyGyroJerkMagStd | The mean of the Fast Fourier Transform of the body angular velocity Jerk magnitude standard deviations

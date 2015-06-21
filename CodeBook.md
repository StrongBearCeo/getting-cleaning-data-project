Code Book
=========
This code book is modified and updated from original features_info.txt

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
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
* mean(): Mean value
* std(): Standard deviation

These variables are then summarized and calculated the average value based on activity and subject


```
ID                     Variable                                                                    Explain
---------------------------------------------------------------------------------------------------------
1                      Subject                                                                 Subject ID
2                     Activity                                                                   Activity
3            tBodyAcc-mean()-X                                 average time of Body Accelerometer Mean -X
4            tBodyAcc-mean()-Y                                 average time of Body Accelerometer Mean -Y
5            tBodyAcc-mean()-Z                                 average time of Body Accelerometer Mean -Z
6             tBodyAcc-std()-X                   average time of Body Accelerometer Standard Deviation -X
7             tBodyAcc-std()-Y                   average time of Body Accelerometer Standard Deviation -Y
8             tBodyAcc-std()-Z                   average time of Body Accelerometer Standard Deviation -Z
9         tGravityAcc-mean()-X                              average time of Gravity Accelerometer Mean -X
10        tGravityAcc-mean()-Y                              average time of Gravity Accelerometer Mean -Y
11        tGravityAcc-mean()-Z                              average time of Gravity Accelerometer Mean -Z
12         tGravityAcc-std()-X                average time of Gravity Accelerometer Standard Deviation -X
13         tGravityAcc-std()-Y                average time of Gravity Accelerometer Standard Deviation -Y
14         tGravityAcc-std()-Z                average time of Gravity Accelerometer Standard Deviation -Z
15       tBodyAccJerk-mean()-X                            average time of Body Accelerometer Jerk Mean -X
16       tBodyAccJerk-mean()-Y                            average time of Body Accelerometer Jerk Mean -Y
17       tBodyAccJerk-mean()-Z                            average time of Body Accelerometer Jerk Mean -Z
18        tBodyAccJerk-std()-X              average time of Body Accelerometer Jerk Standard Deviation -X
19        tBodyAccJerk-std()-Y              average time of Body Accelerometer Jerk Standard Deviation -Y
20        tBodyAccJerk-std()-Z              average time of Body Accelerometer Jerk Standard Deviation -Z
21          tBodyGyro-mean()-X                                     average time of Body Gyroscope Mean -X
22          tBodyGyro-mean()-Y                                     average time of Body Gyroscope Mean -Y
23          tBodyGyro-mean()-Z                                     average time of Body Gyroscope Mean -Z
24           tBodyGyro-std()-X                       average time of Body Gyroscope Standard Deviation -X
25           tBodyGyro-std()-Y                       average time of Body Gyroscope Standard Deviation -Y
26           tBodyGyro-std()-Z                       average time of Body Gyroscope Standard Deviation -Z
27      tBodyGyroJerk-mean()-X                                average time of Body Gyroscope Jerk Mean -X
28      tBodyGyroJerk-mean()-Y                                average time of Body Gyroscope Jerk Mean -Y
29      tBodyGyroJerk-mean()-Z                                average time of Body Gyroscope Jerk Mean -Z
30       tBodyGyroJerk-std()-X                  average time of Body Gyroscope Jerk Standard Deviation -X
31       tBodyGyroJerk-std()-Y                  average time of Body Gyroscope Jerk Standard Deviation -Y
32       tBodyGyroJerk-std()-Z                  average time of Body Gyroscope Jerk Standard Deviation -Z
33          tBodyAccMag-mean()                         average time of Body Accelerometer Magnitude Mean
34           tBodyAccMag-std()           average time of Body Accelerometer Magnitude Standard Deviation
35       tGravityAccMag-mean()                      average time of Gravity Accelerometer Magnitude Mean
36        tGravityAccMag-std()        average time of Gravity Accelerometer Magnitude Standard Deviation
37      tBodyAccJerkMag-mean()                    average time of Body Accelerometer Jerk Magnitude Mean
38       tBodyAccJerkMag-std()      average time of Body Accelerometer Jerk Magnitude Standard Deviation
39         tBodyGyroMag-mean()                             average time of Body Gyroscope Magnitude Mean
40          tBodyGyroMag-std()               average time of Body Gyroscope Magnitude Standard Deviation
41     tBodyGyroJerkMag-mean()                        average time of Body Gyroscope Jerk Magnitude Mean
42      tBodyGyroJerkMag-std()          average time of Body Gyroscope Jerk Magnitude Standard Deviation
43           fBodyAcc-mean()-X                            average frequency of Body Accelerometer Mean -X
44           fBodyAcc-mean()-Y                            average frequency of Body Accelerometer Mean -Y
45           fBodyAcc-mean()-Z                            average frequency of Body Accelerometer Mean -Z
46            fBodyAcc-std()-X              average frequency of Body Accelerometer Standard Deviation -X
47            fBodyAcc-std()-Y              average frequency of Body Accelerometer Standard Deviation -Y
48            fBodyAcc-std()-Z              average frequency of Body Accelerometer Standard Deviation -Z
49       fBodyAccJerk-mean()-X                       average frequency of Body Accelerometer Jerk Mean -X
50       fBodyAccJerk-mean()-Y                       average frequency of Body Accelerometer Jerk Mean -Y
51       fBodyAccJerk-mean()-Z                       average frequency of Body Accelerometer Jerk Mean -Z
52        fBodyAccJerk-std()-X         average frequency of Body Accelerometer Jerk Standard Deviation -X
53        fBodyAccJerk-std()-Y         average frequency of Body Accelerometer Jerk Standard Deviation -Y
54        fBodyAccJerk-std()-Z         average frequency of Body Accelerometer Jerk Standard Deviation -Z
55          fBodyGyro-mean()-X                                average frequency of Body Gyroscope Mean -X
56          fBodyGyro-mean()-Y                                average frequency of Body Gyroscope Mean -Y
57          fBodyGyro-mean()-Z                                average frequency of Body Gyroscope Mean -Z
58           fBodyGyro-std()-X                  average frequency of Body Gyroscope Standard Deviation -X
59           fBodyGyro-std()-Y                  average frequency of Body Gyroscope Standard Deviation -Y
60           fBodyGyro-std()-Z                  average frequency of Body Gyroscope Standard Deviation -Z
61          fBodyAccMag-mean()                    average frequency of Body Accelerometer Magnitude Mean
62           fBodyAccMag-std()      average frequency of Body Accelerometer Magnitude Standard Deviation
63  fBodyBodyAccJerkMag-mean()               average frequency of Body Accelerometer Jerk Magnitude Mean
64   fBodyBodyAccJerkMag-std() average frequency of Body Accelerometer Jerk Magnitude Standard Deviation
65     fBodyBodyGyroMag-mean()                        average frequency of Body Gyroscope Magnitude Mean
66      fBodyBodyGyroMag-std()          average frequency of Body Gyroscope Magnitude Standard Deviation
67 fBodyBodyGyroJerkMag-mean()                   average frequency of Body Gyroscope Jerk Magnitude Mean
68  fBodyBodyGyroJerkMag-std()     average frequency of Body Gyroscope Jerk Magnitude Standard Deviation
```

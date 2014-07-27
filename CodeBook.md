####Document file name: CodeBook.md
####Author: 	Mohsin Jessa
####Date: 		July 24, 2014 
####Version:	V1.7

**This code book describes the variable names, data transformations or other processing work that I performed in order to produce a tidy dataset for this assignment.**


Feature Selection 
=================

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

The complete list of variables of each feature vector is available in 'features.txt'




Assignment Specific Information:
================================

The data for this assignment was part of an experiment, details of which can be found [**here.**](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones ) and was downloaded from the following [**Data Source.** ](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip )

The variables used in the raw data downloaded from the source was explained earlier in this document.


###Input data set - list of filenames used in this assignment:

- activity_labels.txt
- features.txt
- subject_test.txt
- subject_train.txt
- X_test.txt
- X_train.txt
- y_test.txt
- y_train.txt


###Output of this assignment is a Tidy Data Set written out to the file: 
- Tidy_Set_Q5_table.txt



##Activity Data: (activity_labels.txt)

Activity Code		| Activity Description/Name
--------------------|----------------------------------
1 | WALKING
2 | WALKING_UPSTAIRS
3 | WALKING_DOWNSTAIRS
4 | SITTING
5 | STANDING
6 | LAYING






##Original dataset with all variable names and column position in the dataset

####The complete list of variables of each feature vector is provided below and is also available in the 'features.txt' file as part of the original dataset.


column position | variable name
-------------|-------------------------------------
1 |   tBodyAcc-mean()-X
2 |   tBodyAcc-mean()-Y
3 |   tBodyAcc-mean()-Z
4 |   tBodyAcc-std()-X
5 |   tBodyAcc-std()-Y
6 |   tBodyAcc-std()-Z
7 |   tBodyAcc-mad()-X
8 |   tBodyAcc-mad()-Y
9 |   tBodyAcc-mad()-Z
10 |   tBodyAcc-max()-X
11 |   tBodyAcc-max()-Y
12 |   tBodyAcc-max()-Z
13 |   tBodyAcc-min()-X
14 |   tBodyAcc-min()-Y
15 |   tBodyAcc-min()-Z
16 |   tBodyAcc-sma()
17 |   tBodyAcc-energy()-X
18 |   tBodyAcc-energy()-Y
19 |   tBodyAcc-energy()-Z
20 |   tBodyAcc-iqr()-X
21 |   tBodyAcc-iqr()-Y
22 |   tBodyAcc-iqr()-Z
23 |   tBodyAcc-entropy()-X
24 |   tBodyAcc-entropy()-Y
25 |   tBodyAcc-entropy()-Z
26 |   tBodyAcc-arCoeff()-X,1
27 |   tBodyAcc-arCoeff()-X,2
28 |   tBodyAcc-arCoeff()-X,3
29 |   tBodyAcc-arCoeff()-X,4
30 |   tBodyAcc-arCoeff()-Y,1
31 |   tBodyAcc-arCoeff()-Y,2
32 |   tBodyAcc-arCoeff()-Y,3
33 |   tBodyAcc-arCoeff()-Y,4
34 |   tBodyAcc-arCoeff()-Z,1
35 |   tBodyAcc-arCoeff()-Z,2
36 |   tBodyAcc-arCoeff()-Z,3
37 |   tBodyAcc-arCoeff()-Z,4
38 |   tBodyAcc-correlation()-X,Y
39 |   tBodyAcc-correlation()-X,Z
40 |   tBodyAcc-correlation()-Y,Z
41 |   tGravityAcc-mean()-X
42 |   tGravityAcc-mean()-Y
43 |   tGravityAcc-mean()-Z
44 |   tGravityAcc-std()-X
45 |   tGravityAcc-std()-Y
46 |   tGravityAcc-std()-Z
47 |   tGravityAcc-mad()-X
48 |   tGravityAcc-mad()-Y
49 |   tGravityAcc-mad()-Z
50 |   tGravityAcc-max()-X
51 |   tGravityAcc-max()-Y
52 |   tGravityAcc-max()-Z
53 |   tGravityAcc-min()-X
54 |   tGravityAcc-min()-Y
55 |   tGravityAcc-min()-Z
56 |   tGravityAcc-sma()
57 |   tGravityAcc-energy()-X
58 |   tGravityAcc-energy()-Y
59 |   tGravityAcc-energy()-Z
60 |   tGravityAcc-iqr()-X
61 |   tGravityAcc-iqr()-Y
62 |   tGravityAcc-iqr()-Z
63 |   tGravityAcc-entropy()-X
64 |   tGravityAcc-entropy()-Y
65 |   tGravityAcc-entropy()-Z
66 |   tGravityAcc-arCoeff()-X,1
67 |   tGravityAcc-arCoeff()-X,2
68 |   tGravityAcc-arCoeff()-X,3
69 |   tGravityAcc-arCoeff()-X,4
70 |   tGravityAcc-arCoeff()-Y,1
71 |   tGravityAcc-arCoeff()-Y,2
72 |   tGravityAcc-arCoeff()-Y,3
73 |   tGravityAcc-arCoeff()-Y,4
74 |   tGravityAcc-arCoeff()-Z,1
75 |   tGravityAcc-arCoeff()-Z,2
76 |   tGravityAcc-arCoeff()-Z,3
77 |   tGravityAcc-arCoeff()-Z,4
78 |   tGravityAcc-correlation()-X,Y
79 |   tGravityAcc-correlation()-X,Z
80 |   tGravityAcc-correlation()-Y,Z
81 |   tBodyAccJerk-mean()-X
82 |   tBodyAccJerk-mean()-Y
83 |   tBodyAccJerk-mean()-Z
84 |   tBodyAccJerk-std()-X
85 |   tBodyAccJerk-std()-Y
86 |   tBodyAccJerk-std()-Z
87 |   tBodyAccJerk-mad()-X
88 |   tBodyAccJerk-mad()-Y
89 |   tBodyAccJerk-mad()-Z
90 |   tBodyAccJerk-max()-X
91 |   tBodyAccJerk-max()-Y
92 |   tBodyAccJerk-max()-Z
93 |   tBodyAccJerk-min()-X
94 |   tBodyAccJerk-min()-Y
95 |   tBodyAccJerk-min()-Z
96 |   tBodyAccJerk-sma()
97 |   tBodyAccJerk-energy()-X
98 |   tBodyAccJerk-energy()-Y
99 |   tBodyAccJerk-energy()-Z
100 |   tBodyAccJerk-iqr()-X
101 |   tBodyAccJerk-iqr()-Y
102 |   tBodyAccJerk-iqr()-Z
103 |   tBodyAccJerk-entropy()-X
104 |   tBodyAccJerk-entropy()-Y
105 |   tBodyAccJerk-entropy()-Z
106 |   tBodyAccJerk-arCoeff()-X,1
107 |   tBodyAccJerk-arCoeff()-X,2
108 |   tBodyAccJerk-arCoeff()-X,3
109 |   tBodyAccJerk-arCoeff()-X,4
110 |   tBodyAccJerk-arCoeff()-Y,1
111 |   tBodyAccJerk-arCoeff()-Y,2
112 |   tBodyAccJerk-arCoeff()-Y,3
113 |   tBodyAccJerk-arCoeff()-Y,4
114 |   tBodyAccJerk-arCoeff()-Z,1
115 |   tBodyAccJerk-arCoeff()-Z,2
116 |   tBodyAccJerk-arCoeff()-Z,3
117 |   tBodyAccJerk-arCoeff()-Z,4
118 |   tBodyAccJerk-correlation()-X,Y
119 |   tBodyAccJerk-correlation()-X,Z
120 |   tBodyAccJerk-correlation()-Y,Z
121 |   tBodyGyro-mean()-X
122 |   tBodyGyro-mean()-Y
123 |   tBodyGyro-mean()-Z
124 |   tBodyGyro-std()-X
125 |   tBodyGyro-std()-Y
126 |   tBodyGyro-std()-Z
127 |   tBodyGyro-mad()-X
128 |   tBodyGyro-mad()-Y
129 |   tBodyGyro-mad()-Z
130 |   tBodyGyro-max()-X
131 |   tBodyGyro-max()-Y
132 |   tBodyGyro-max()-Z
133 |   tBodyGyro-min()-X
134 |   tBodyGyro-min()-Y
135 |   tBodyGyro-min()-Z
136 |   tBodyGyro-sma()
137 |   tBodyGyro-energy()-X
138 |   tBodyGyro-energy()-Y
139 |   tBodyGyro-energy()-Z
140 |   tBodyGyro-iqr()-X
141 |   tBodyGyro-iqr()-Y
142 |   tBodyGyro-iqr()-Z
143 |   tBodyGyro-entropy()-X
144 |   tBodyGyro-entropy()-Y
145 |   tBodyGyro-entropy()-Z
146 |   tBodyGyro-arCoeff()-X,1
147 |   tBodyGyro-arCoeff()-X,2
148 |   tBodyGyro-arCoeff()-X,3
149 |   tBodyGyro-arCoeff()-X,4
150 |   tBodyGyro-arCoeff()-Y,1
151 |   tBodyGyro-arCoeff()-Y,2
152 |   tBodyGyro-arCoeff()-Y,3
153 |   tBodyGyro-arCoeff()-Y,4
154 |   tBodyGyro-arCoeff()-Z,1
155 |   tBodyGyro-arCoeff()-Z,2
156 |   tBodyGyro-arCoeff()-Z,3
157 |   tBodyGyro-arCoeff()-Z,4
158 |   tBodyGyro-correlation()-X,Y
159 |   tBodyGyro-correlation()-X,Z
160 |   tBodyGyro-correlation()-Y,Z
161 |   tBodyGyroJerk-mean()-X
162 |   tBodyGyroJerk-mean()-Y
163 |   tBodyGyroJerk-mean()-Z
164 |   tBodyGyroJerk-std()-X
165 |   tBodyGyroJerk-std()-Y
166 |   tBodyGyroJerk-std()-Z
167 |   tBodyGyroJerk-mad()-X
168 |   tBodyGyroJerk-mad()-Y
169 |   tBodyGyroJerk-mad()-Z
170 |   tBodyGyroJerk-max()-X
171 |   tBodyGyroJerk-max()-Y
172 |   tBodyGyroJerk-max()-Z
173 |   tBodyGyroJerk-min()-X
174 |   tBodyGyroJerk-min()-Y
175 |   tBodyGyroJerk-min()-Z
176 |   tBodyGyroJerk-sma()
177 |   tBodyGyroJerk-energy()-X
178 |   tBodyGyroJerk-energy()-Y
179 |   tBodyGyroJerk-energy()-Z
180 |   tBodyGyroJerk-iqr()-X
181 |   tBodyGyroJerk-iqr()-Y
182 |   tBodyGyroJerk-iqr()-Z
183 |   tBodyGyroJerk-entropy()-X
184 |   tBodyGyroJerk-entropy()-Y
185 |   tBodyGyroJerk-entropy()-Z
186 |   tBodyGyroJerk-arCoeff()-X,1
187 |   tBodyGyroJerk-arCoeff()-X,2
188 |   tBodyGyroJerk-arCoeff()-X,3
189 |   tBodyGyroJerk-arCoeff()-X,4
190 |   tBodyGyroJerk-arCoeff()-Y,1
191 |   tBodyGyroJerk-arCoeff()-Y,2
192 |   tBodyGyroJerk-arCoeff()-Y,3
193 |   tBodyGyroJerk-arCoeff()-Y,4
194 |   tBodyGyroJerk-arCoeff()-Z,1
195 |   tBodyGyroJerk-arCoeff()-Z,2
196 |   tBodyGyroJerk-arCoeff()-Z,3
197 |   tBodyGyroJerk-arCoeff()-Z,4
198 |   tBodyGyroJerk-correlation()-X,Y
199 |   tBodyGyroJerk-correlation()-X,Z
200 |   tBodyGyroJerk-correlation()-Y,Z
201 |   tBodyAccMag-mean()
202 |   tBodyAccMag-std()
203 |   tBodyAccMag-mad()
204 |   tBodyAccMag-max()
205 |   tBodyAccMag-min()
206 |   tBodyAccMag-sma()
207 |   tBodyAccMag-energy()
208 |   tBodyAccMag-iqr()
209 |   tBodyAccMag-entropy()
210 |   tBodyAccMag-arCoeff()1
211 |   tBodyAccMag-arCoeff()2
212 |   tBodyAccMag-arCoeff()3
213 |   tBodyAccMag-arCoeff()4
214 |   tGravityAccMag-mean()
215 |   tGravityAccMag-std()
216 |   tGravityAccMag-mad()
217 |   tGravityAccMag-max()
218 |   tGravityAccMag-min()
219 |   tGravityAccMag-sma()
220 |   tGravityAccMag-energy()
221 |   tGravityAccMag-iqr()
222 |   tGravityAccMag-entropy()
223 |   tGravityAccMag-arCoeff()1
224 |   tGravityAccMag-arCoeff()2
225 |   tGravityAccMag-arCoeff()3
226 |   tGravityAccMag-arCoeff()4
227 |   tBodyAccJerkMag-mean()
228 |   tBodyAccJerkMag-std()
229 |   tBodyAccJerkMag-mad()
230 |   tBodyAccJerkMag-max()
231 |   tBodyAccJerkMag-min()
232 |   tBodyAccJerkMag-sma()
233 |   tBodyAccJerkMag-energy()
234 |   tBodyAccJerkMag-iqr()
235 |   tBodyAccJerkMag-entropy()
236 |   tBodyAccJerkMag-arCoeff()1
237 |   tBodyAccJerkMag-arCoeff()2
238 |   tBodyAccJerkMag-arCoeff()3
239 |   tBodyAccJerkMag-arCoeff()4
240 |   tBodyGyroMag-mean()
241 |   tBodyGyroMag-std()
242 |   tBodyGyroMag-mad()
243 |   tBodyGyroMag-max()
244 |   tBodyGyroMag-min()
245 |   tBodyGyroMag-sma()
246 |   tBodyGyroMag-energy()
247 |   tBodyGyroMag-iqr()
248 |   tBodyGyroMag-entropy()
249 |   tBodyGyroMag-arCoeff()1
250 |   tBodyGyroMag-arCoeff()2
251 |   tBodyGyroMag-arCoeff()3
252 |   tBodyGyroMag-arCoeff()4
253 |   tBodyGyroJerkMag-mean()
254 |   tBodyGyroJerkMag-std()
255 |   tBodyGyroJerkMag-mad()
256 |   tBodyGyroJerkMag-max()
257 |   tBodyGyroJerkMag-min()
258 |   tBodyGyroJerkMag-sma()
259 |   tBodyGyroJerkMag-energy()
260 |   tBodyGyroJerkMag-iqr()
261 |   tBodyGyroJerkMag-entropy()
262 |   tBodyGyroJerkMag-arCoeff()1
263 |   tBodyGyroJerkMag-arCoeff()2
264 |   tBodyGyroJerkMag-arCoeff()3
265 |   tBodyGyroJerkMag-arCoeff()4
266 |   fBodyAcc-mean()-X
267 |   fBodyAcc-mean()-Y
268 |   fBodyAcc-mean()-Z
269 |   fBodyAcc-std()-X
270 |   fBodyAcc-std()-Y
271 |   fBodyAcc-std()-Z
272 |   fBodyAcc-mad()-X
273 |   fBodyAcc-mad()-Y
274 |   fBodyAcc-mad()-Z
275 |   fBodyAcc-max()-X
276 |   fBodyAcc-max()-Y
277 |   fBodyAcc-max()-Z
278 |   fBodyAcc-min()-X
279 |   fBodyAcc-min()-Y
280 |   fBodyAcc-min()-Z
281 |   fBodyAcc-sma()
282 |   fBodyAcc-energy()-X
283 |   fBodyAcc-energy()-Y
284 |   fBodyAcc-energy()-Z
285 |   fBodyAcc-iqr()-X
286 |   fBodyAcc-iqr()-Y
287 |   fBodyAcc-iqr()-Z
288 |   fBodyAcc-entropy()-X
289 |   fBodyAcc-entropy()-Y
290 |   fBodyAcc-entropy()-Z
291 |   fBodyAcc-maxInds-X
292 |   fBodyAcc-maxInds-Y
293 |   fBodyAcc-maxInds-Z
294 |   fBodyAcc-meanFreq()-X
295 |   fBodyAcc-meanFreq()-Y
296 |   fBodyAcc-meanFreq()-Z
297 |   fBodyAcc-skewness()-X
298 |   fBodyAcc-kurtosis()-X
299 |   fBodyAcc-skewness()-Y
300 |   fBodyAcc-kurtosis()-Y
301 |   fBodyAcc-skewness()-Z
302 |   fBodyAcc-kurtosis()-Z
303 |   fBodyAcc-bandsEnergy()-1,8
304 |   fBodyAcc-bandsEnergy()-9,16
305 |   fBodyAcc-bandsEnergy()-17,24
306 |   fBodyAcc-bandsEnergy()-25,32
307 |   fBodyAcc-bandsEnergy()-33,40
308 |   fBodyAcc-bandsEnergy()-41,48
309 |   fBodyAcc-bandsEnergy()-49,56
310 |   fBodyAcc-bandsEnergy()-57,64
311 |   fBodyAcc-bandsEnergy()-1,16
312 |   fBodyAcc-bandsEnergy()-17,32
313 |   fBodyAcc-bandsEnergy()-33,48
314 |   fBodyAcc-bandsEnergy()-49,64
315 |   fBodyAcc-bandsEnergy()-1,24
316 |   fBodyAcc-bandsEnergy()-25,48
317 |   fBodyAcc-bandsEnergy()-1,8
318 |   fBodyAcc-bandsEnergy()-9,16
319 |   fBodyAcc-bandsEnergy()-17,24
320 |   fBodyAcc-bandsEnergy()-25,32
321 |   fBodyAcc-bandsEnergy()-33,40
322 |   fBodyAcc-bandsEnergy()-41,48
323 |   fBodyAcc-bandsEnergy()-49,56
324 |   fBodyAcc-bandsEnergy()-57,64
325 |   fBodyAcc-bandsEnergy()-1,16
326 |   fBodyAcc-bandsEnergy()-17,32
327 |   fBodyAcc-bandsEnergy()-33,48
328 |   fBodyAcc-bandsEnergy()-49,64
329 |   fBodyAcc-bandsEnergy()-1,24
330 |   fBodyAcc-bandsEnergy()-25,48
331 |   fBodyAcc-bandsEnergy()-1,8
332 |   fBodyAcc-bandsEnergy()-9,16
333 |   fBodyAcc-bandsEnergy()-17,24
334 |   fBodyAcc-bandsEnergy()-25,32
335 |   fBodyAcc-bandsEnergy()-33,40
336 |   fBodyAcc-bandsEnergy()-41,48
337 |   fBodyAcc-bandsEnergy()-49,56
338 |   fBodyAcc-bandsEnergy()-57,64
339 |   fBodyAcc-bandsEnergy()-1,16
340 |   fBodyAcc-bandsEnergy()-17,32
341 |   fBodyAcc-bandsEnergy()-33,48
342 |   fBodyAcc-bandsEnergy()-49,64
343 |   fBodyAcc-bandsEnergy()-1,24
344 |   fBodyAcc-bandsEnergy()-25,48
345 |   fBodyAccJerk-mean()-X
346 |   fBodyAccJerk-mean()-Y
347 |   fBodyAccJerk-mean()-Z
348 |   fBodyAccJerk-std()-X
349 |   fBodyAccJerk-std()-Y
350 |   fBodyAccJerk-std()-Z
351 |   fBodyAccJerk-mad()-X
352 |   fBodyAccJerk-mad()-Y
353 |   fBodyAccJerk-mad()-Z
354 |   fBodyAccJerk-max()-X
355 |   fBodyAccJerk-max()-Y
356 |   fBodyAccJerk-max()-Z
357 |   fBodyAccJerk-min()-X
358 |   fBodyAccJerk-min()-Y
359 |   fBodyAccJerk-min()-Z
360 |   fBodyAccJerk-sma()
361 |   fBodyAccJerk-energy()-X
362 |   fBodyAccJerk-energy()-Y
363 |   fBodyAccJerk-energy()-Z
364 |   fBodyAccJerk-iqr()-X
365 |   fBodyAccJerk-iqr()-Y
366 |   fBodyAccJerk-iqr()-Z
367 |   fBodyAccJerk-entropy()-X
368 |   fBodyAccJerk-entropy()-Y
369 |   fBodyAccJerk-entropy()-Z
370 |   fBodyAccJerk-maxInds-X
371 |   fBodyAccJerk-maxInds-Y
372 |   fBodyAccJerk-maxInds-Z
373 |   fBodyAccJerk-meanFreq()-X
374 |   fBodyAccJerk-meanFreq()-Y
375 |   fBodyAccJerk-meanFreq()-Z
376 |   fBodyAccJerk-skewness()-X
377 |   fBodyAccJerk-kurtosis()-X
378 |   fBodyAccJerk-skewness()-Y
379 |   fBodyAccJerk-kurtosis()-Y
380 |   fBodyAccJerk-skewness()-Z
381 |   fBodyAccJerk-kurtosis()-Z
382 |   fBodyAccJerk-bandsEnergy()-1,8
383 |   fBodyAccJerk-bandsEnergy()-9,16
384 |   fBodyAccJerk-bandsEnergy()-17,24
385 |   fBodyAccJerk-bandsEnergy()-25,32
386 |   fBodyAccJerk-bandsEnergy()-33,40
387 |   fBodyAccJerk-bandsEnergy()-41,48
388 |   fBodyAccJerk-bandsEnergy()-49,56
389 |   fBodyAccJerk-bandsEnergy()-57,64
390 |   fBodyAccJerk-bandsEnergy()-1,16
391 |   fBodyAccJerk-bandsEnergy()-17,32
392 |   fBodyAccJerk-bandsEnergy()-33,48
393 |   fBodyAccJerk-bandsEnergy()-49,64
394 |   fBodyAccJerk-bandsEnergy()-1,24
395 |   fBodyAccJerk-bandsEnergy()-25,48
396 |   fBodyAccJerk-bandsEnergy()-1,8
397 |   fBodyAccJerk-bandsEnergy()-9,16
398 |   fBodyAccJerk-bandsEnergy()-17,24
399 |   fBodyAccJerk-bandsEnergy()-25,32
400 |   fBodyAccJerk-bandsEnergy()-33,40
401 |   fBodyAccJerk-bandsEnergy()-41,48
402 |   fBodyAccJerk-bandsEnergy()-49,56
403 |   fBodyAccJerk-bandsEnergy()-57,64
404 |   fBodyAccJerk-bandsEnergy()-1,16
405 |   fBodyAccJerk-bandsEnergy()-17,32
406 |   fBodyAccJerk-bandsEnergy()-33,48
407 |   fBodyAccJerk-bandsEnergy()-49,64
408 |   fBodyAccJerk-bandsEnergy()-1,24
409 |   fBodyAccJerk-bandsEnergy()-25,48
410 |   fBodyAccJerk-bandsEnergy()-1,8
411 |   fBodyAccJerk-bandsEnergy()-9,16
412 |   fBodyAccJerk-bandsEnergy()-17,24
413 |   fBodyAccJerk-bandsEnergy()-25,32
414 |   fBodyAccJerk-bandsEnergy()-33,40
415 |   fBodyAccJerk-bandsEnergy()-41,48
416 |   fBodyAccJerk-bandsEnergy()-49,56
417 |   fBodyAccJerk-bandsEnergy()-57,64
418 |   fBodyAccJerk-bandsEnergy()-1,16
419 |   fBodyAccJerk-bandsEnergy()-17,32
420 |   fBodyAccJerk-bandsEnergy()-33,48
421 |   fBodyAccJerk-bandsEnergy()-49,64
422 |   fBodyAccJerk-bandsEnergy()-1,24
423 |   fBodyAccJerk-bandsEnergy()-25,48
424 |   fBodyGyro-mean()-X
425 |   fBodyGyro-mean()-Y
426 |   fBodyGyro-mean()-Z
427 |   fBodyGyro-std()-X
428 |   fBodyGyro-std()-Y
429 |   fBodyGyro-std()-Z
430 |   fBodyGyro-mad()-X
431 |   fBodyGyro-mad()-Y
432 |   fBodyGyro-mad()-Z
433 |   fBodyGyro-max()-X
434 |   fBodyGyro-max()-Y
435 |   fBodyGyro-max()-Z
436 |   fBodyGyro-min()-X
437 |   fBodyGyro-min()-Y
438 |   fBodyGyro-min()-Z
439 |   fBodyGyro-sma()
440 |   fBodyGyro-energy()-X
441 |   fBodyGyro-energy()-Y
442 |   fBodyGyro-energy()-Z
443 |   fBodyGyro-iqr()-X
444 |   fBodyGyro-iqr()-Y
445 |   fBodyGyro-iqr()-Z
446 |   fBodyGyro-entropy()-X
447 |   fBodyGyro-entropy()-Y
448 |   fBodyGyro-entropy()-Z
449 |   fBodyGyro-maxInds-X
450 |   fBodyGyro-maxInds-Y
451 |   fBodyGyro-maxInds-Z
452 |   fBodyGyro-meanFreq()-X
453 |   fBodyGyro-meanFreq()-Y
454 |   fBodyGyro-meanFreq()-Z
455 |   fBodyGyro-skewness()-X
456 |   fBodyGyro-kurtosis()-X
457 |   fBodyGyro-skewness()-Y
458 |   fBodyGyro-kurtosis()-Y
459 |   fBodyGyro-skewness()-Z
460 |   fBodyGyro-kurtosis()-Z
461 |   fBodyGyro-bandsEnergy()-1,8
462 |   fBodyGyro-bandsEnergy()-9,16
463 |   fBodyGyro-bandsEnergy()-17,24
464 |   fBodyGyro-bandsEnergy()-25,32
465 |   fBodyGyro-bandsEnergy()-33,40
466 |   fBodyGyro-bandsEnergy()-41,48
467 |   fBodyGyro-bandsEnergy()-49,56
468 |   fBodyGyro-bandsEnergy()-57,64
469 |   fBodyGyro-bandsEnergy()-1,16
470 |   fBodyGyro-bandsEnergy()-17,32
471 |   fBodyGyro-bandsEnergy()-33,48
472 |   fBodyGyro-bandsEnergy()-49,64
473 |   fBodyGyro-bandsEnergy()-1,24
474 |   fBodyGyro-bandsEnergy()-25,48
475 |   fBodyGyro-bandsEnergy()-1,8
476 |   fBodyGyro-bandsEnergy()-9,16
477 |   fBodyGyro-bandsEnergy()-17,24
478 |   fBodyGyro-bandsEnergy()-25,32
479 |   fBodyGyro-bandsEnergy()-33,40
480 |   fBodyGyro-bandsEnergy()-41,48
481 |   fBodyGyro-bandsEnergy()-49,56
482 |   fBodyGyro-bandsEnergy()-57,64
483 |   fBodyGyro-bandsEnergy()-1,16
484 |   fBodyGyro-bandsEnergy()-17,32
485 |   fBodyGyro-bandsEnergy()-33,48
486 |   fBodyGyro-bandsEnergy()-49,64
487 |   fBodyGyro-bandsEnergy()-1,24
488 |   fBodyGyro-bandsEnergy()-25,48
489 |   fBodyGyro-bandsEnergy()-1,8
490 |   fBodyGyro-bandsEnergy()-9,16
491 |   fBodyGyro-bandsEnergy()-17,24
492 |   fBodyGyro-bandsEnergy()-25,32
493 |   fBodyGyro-bandsEnergy()-33,40
494 |   fBodyGyro-bandsEnergy()-41,48
495 |   fBodyGyro-bandsEnergy()-49,56
496 |   fBodyGyro-bandsEnergy()-57,64
497 |   fBodyGyro-bandsEnergy()-1,16
498 |   fBodyGyro-bandsEnergy()-17,32
499 |   fBodyGyro-bandsEnergy()-33,48
500 |   fBodyGyro-bandsEnergy()-49,64
501 |   fBodyGyro-bandsEnergy()-1,24
502 |   fBodyGyro-bandsEnergy()-25,48
503 |   fBodyAccMag-mean()
504 |   fBodyAccMag-std()
505 |   fBodyAccMag-mad()
506 |   fBodyAccMag-max()
507 |   fBodyAccMag-min()
508 |   fBodyAccMag-sma()
509 |   fBodyAccMag-energy()
510 |   fBodyAccMag-iqr()
511 |   fBodyAccMag-entropy()
512 |   fBodyAccMag-maxInds
513 |   fBodyAccMag-meanFreq()
514 |   fBodyAccMag-skewness()
515 |   fBodyAccMag-kurtosis()
516 |   fBodyBodyAccJerkMag-mean()
517 |   fBodyBodyAccJerkMag-std()
518 |   fBodyBodyAccJerkMag-mad()
519 |   fBodyBodyAccJerkMag-max()
520 |   fBodyBodyAccJerkMag-min()
521 |   fBodyBodyAccJerkMag-sma()
522 |   fBodyBodyAccJerkMag-energy()
523 |   fBodyBodyAccJerkMag-iqr()
524 |   fBodyBodyAccJerkMag-entropy()
525 |   fBodyBodyAccJerkMag-maxInds
526 |   fBodyBodyAccJerkMag-meanFreq()
527 |   fBodyBodyAccJerkMag-skewness()
528 |   fBodyBodyAccJerkMag-kurtosis()
529 |   fBodyBodyGyroMag-mean()
530 |   fBodyBodyGyroMag-std()
531 |   fBodyBodyGyroMag-mad()
532 |   fBodyBodyGyroMag-max()
533 |   fBodyBodyGyroMag-min()
534 |   fBodyBodyGyroMag-sma()
535 |   fBodyBodyGyroMag-energy()
536 |   fBodyBodyGyroMag-iqr()
537 |   fBodyBodyGyroMag-entropy()
538 |   fBodyBodyGyroMag-maxInds
539 |   fBodyBodyGyroMag-meanFreq()
540 |   fBodyBodyGyroMag-skewness()
541 |   fBodyBodyGyroMag-kurtosis()
542 |   fBodyBodyGyroJerkMag-mean()
543 |   fBodyBodyGyroJerkMag-std()
544 |   fBodyBodyGyroJerkMag-mad()
545 |   fBodyBodyGyroJerkMag-max()
546 |   fBodyBodyGyroJerkMag-min()
547 |   fBodyBodyGyroJerkMag-sma()
548 |   fBodyBodyGyroJerkMag-energy()
549 |   fBodyBodyGyroJerkMag-iqr()
550 |   fBodyBodyGyroJerkMag-entropy()
551 |   fBodyBodyGyroJerkMag-maxInds
552 |   fBodyBodyGyroJerkMag-meanFreq()
553 |   fBodyBodyGyroJerkMag-skewness()
554 |   fBodyBodyGyroJerkMag-kurtosis()
555 |   angle(tBodyAccMean,gravity)
556 |   angle(tBodyAccJerkMean),gravityMean)
557 |   angle(tBodyGyroMean,gravityMean)
558 |   angle(tBodyGyroJerkMean,gravityMean)
559 |   angle(X,gravityMean)
560 |   angle(Y,gravityMean)
561 |   angle(Z,gravityMean)



Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 


These signals were used to estimate variables of the feature vector for each pattern:  
**'-XYZ'** is used to denote 3-axial signals in the X, Y and Z directions.

-	tBodyAcc-XYZ
-	tGravityAcc-XYZ
-	tBodyAccJerk-XYZ
-	tBodyGyro-XYZ
-	tBodyGyroJerk-XYZ
-	tBodyAccMag
-	tGravityAccMag
-	tBodyAccJerkMag
-	tBodyGyroMag
-	tBodyGyroJerkMag
-	fBodyAcc-XYZ
-	fBodyAccJerk-XYZ
-	fBodyGyro-XYZ
-	fBodyAccMag
-	fBodyAccJerkMag
-	fBodyGyroMag
-	fBodyGyroJerkMag


**The set of variables that were estimated from these signals are:** 

-	**mean()**: Mean value
-	**std()**: Standard deviation
-	**mad()**: Median absolute deviation 
-	**max()**: Largest value in array
-	**min()**: Smallest value in array
-	**sma()**: Signal magnitude area
-	**energy()**: Energy measure. Sum of the squares divided by the number of values. 
-	**iqr()**: Interquartile range 
-	**entropy()**: Signal entropy
-	**arCoeff()**: Autorregresion coefficients with Burg order equal to 4
-	**correlation()**: correlation coefficient between two signals
-	**maxInds()**: index of the frequency component with largest magnitude
-	**meanFreq()**: Weighted average of the frequency components to obtain a mean frequency
-	**skewness()**: skewness of the frequency domain signal 
-	**kurtosis()**: kurtosis of the frequency domain signal 
-	**bandsEnergy()**: Energy of a frequency interval within the 64 bins of the FFT of each window.
-	**angle()**: Angle between to vectors.


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

-	gravityMean
-	tBodyAccMean
-	tBodyAccJerkMean
-	tBodyGyroMean
-	tBodyGyroJerkMean





#####For Part 2 of the assignment we were asked to " Extract only the measurements on the mean and standard deviation for each measurement. " 
For that, the variables I selected were those with either "mean" or "std" mentioned in their names. The variable names were cleaned and made more readable by performing the following:
-	removing all the "()"
-	multiple "." were replaced with a single "-"
-	"t" in the beginning of the name was replaced with "Time"
-	"f" in the beginning of the name was replaced with "Freq"
-	"mean" was replaced with "Mean"
-	"std" was replaced with "Std"

These variable names where then averaged for each activity performed by each volunteer/subject. Since each volunteer performed all the activities (a total of 6 different activities) and there being 30 volunteers (21 training and 9 test volunteers) we ended up with a total of 180 observations in the final "tidy" version of the dataset.


***The following table shows variables that were extracted from the original dataset (features.txt) and the X_train/test.txt files to complete the final part of this assignment***


Column position in original dataset | Original Variable Names     	|Revised Descriptive Variable Names
--------------|--------------------------------|-----------------------------------------
1 |		tBodyAcc-mean()-X		   |		TimeBodyAcc-Mean-X
2 |		tBodyAcc-mean()-Y		   |		TimeBodyAcc-Mean-Y
3 |		tBodyAcc-mean()-Z		   |		TimeBodyAcc-Mean-Z
4 |		tBodyAcc-std()-X		   |		TimeBodyAcc-Std-X
5 |		tBodyAcc-std()-Y		   |		TimeBodyAcc-Std-Y
6 |		tBodyAcc-std()-Z		   |		TimeBodyAcc-Std-Z
41 |	tGravityAcc-mean()-X		|		TimeGravityAcc-Mean-X
42 |	tGravityAcc-mean()-Y		|		TimeGravityAcc-Mean-Y
43 |	tGravityAcc-mean()-Z		|		TimeGravityAcc-Mean-Z
44 |	tGravityAcc-std()-X		|			TimeGravityAcc-Std-X
45 |	tGravityAcc-std()-Y		|			TimeGravityAcc-Std-Y
46 |	tGravityAcc-std()-Z		|			TimeGravityAcc-Std-Z
81 |	tBodyAccJerk-mean()-X	|			TimeBodyAccJerk-Mean-X
82 |	tBodyAccJerk-mean()-Y	|			TimeBodyAccJerk-Mean-Y
83 |	tBodyAccJerk-mean()-Z	|			TimeBodyAccJerk-Mean-Z
84 |	tBodyAccJerk-std()-X		|		TimeBodyAccJerk-Std-X
85 |	tBodyAccJerk-std()-Y		|		TimeBodyAccJerk-Std-Y
86 |	tBodyAccJerk-std()-Z		|		TimeBodyAccJerk-Std-Z
121 |	tBodyGyro-mean()-X		|			TimeBodyGyro-Mean-X
122 |	tBodyGyro-mean()-Y		|			TimeBodyGyro-Mean-Y
123 |	tBodyGyro-mean()-Z		|			TimeBodyGyro-Mean-Z
124 |	tBodyGyro-std()-X		|			TimeBodyGyro-Std-X
125 |	tBodyGyro-std()-Y		|			TimeBodyGyro-Std-Y
126 |	tBodyGyro-std()-Z		|			TimeBodyGyro-Std-Z
161 |	tBodyGyroJerk-mean()-X	|			TimeBodyGyroJerk-Mean-X
162 |	tBodyGyroJerk-mean()-Y	|			TimeBodyGyroJerk-Mean-Y
163 |	tBodyGyroJerk-mean()-Z	|			TimeBodyGyroJerk-Mean-Z
164 |	tBodyGyroJerk-std()-X	|			TimeBodyGyroJerk-Std-X
165 |	tBodyGyroJerk-std()-Y	|			TimeBodyGyroJerk-Std-Y
166 |	tBodyGyroJerk-std()-Z	|			TimeBodyGyroJerk-Std-Z
201 |	tBodyAccMag-mean()		|			TimeBodyAccMag-Mean
202 |	tBodyAccMag-std()		|			TimeBodyAccMag-Std
214 |	tGravityAccMag-mean()	|			TimeGravityAccMag-Mean
215 |	tGravityAccMag-std()	|			TimeGravityAccMag-Std
227 |	tBodyAccJerkMag-mean()	|			TimeBodyAccJerkMag-Mean
228 |	tBodyAccJerkMag-std()	|			TimeBodyAccJerkMag-Std
240 |	tBodyGyroMag-mean()		|			TimeBodyGyroMag-Mean
241 |	tBodyGyroMag-std()		|			TimeBodyGyroMag-Std
253 |	tBodyGyroJerkMag-mean()	|			TimeBodyGyroJerkMag-Mean
254 |	tBodyGyroJerkMag-std()	|			TimeBodyGyroJerkMag-Std
266 |	fBodyAcc-mean()-X		|			FreqBodyAcc-Mean-X
267 |	fBodyAcc-mean()-Y		|			FreqBodyAcc-Mean-Y
268 |	fBodyAcc-mean()-Z		|			FreqBodyAcc-Mean-Z
269 |	fBodyAcc-std()-X		|			FreqBodyAcc-Std-X
270 |	fBodyAcc-std()-Y		|			FreqBodyAcc-Std-Y
271 |	fBodyAcc-std()-Z		|			FreqBodyAcc-Std-Z
345 |	fBodyAccJerk-mean()-X	|			FreqBodyAccJerk-Mean-X
346 |	fBodyAccJerk-mean()-Y	|			FreqBodyAccJerk-Mean-Y
347 |	fBodyAccJerk-mean()-Z	|			FreqBodyAccJerk-Mean-Z
348 |	fBodyAccJerk-std()-X	|			FreqBodyAccJerk-Std-X
349 |	fBodyAccJerk-std()-Y	|			FreqBodyAccJerk-Std-Y
350 |	fBodyAccJerk-std()-Z	|			FreqBodyAccJerk-Std-Z
424 |	fBodyGyro-mean()-X		|			FreqBodyGyro-Mean-X
425 |	fBodyGyro-mean()-Y		|			FreqBodyGyro-Mean-Y
426 |	fBodyGyro-mean()-Z		|			FreqBodyGyro-Mean-Z
427 |	fBodyGyro-std()-X		|			FreqBodyGyro-Std-X
428 |	fBodyGyro-std()-Y		|			FreqBodyGyro-Std-Y
429 |	fBodyGyro-std()-Z		|			FreqBodyGyro-Std-Z
503 |	fBodyAccMag-mean()		|			FreqBodyAccMag-Mean
504 |	fBodyAccMag-std()		|			FreqBodyAccMag-Std
516 |	fBodyBodyAccJerkMag-mean()|			FreqBodyAccJerkMag-Mean
517 |	fBodyBodyAccJerkMag-std()		|	FreqBodyAccJerkMag-Std
529 |	fBodyBodyGyroMag-mean()			|	FreqBodyGyroMag-Mean
530 |	fBodyBodyGyroMag-std()			|	FreqBodyGyroMag-Std
542 |	fBodyBodyGyroJerkMag-mean()|		FreqBodyGyroJerkMag-Mean
543 |	fBodyBodyGyroJerkMag-std()|			FreqBodyGyroJerkMag-Std



In addition: Two new variables were introduced in the Tidy Data Set:

- **VolunteerID**			Volunteer Identifying Number/Code. Unique number between 1 and 30 to identify each Volunteer (as provided in the raw data files y_test.txt and y_train.txt)
- **ActivityName**			Description of Activity (as provided in the raw data file activity_labels.txt). 6 values between (1-6) with following description
  - 1 WALKING
  - 2 WALKING_UPSTAIRS
  - 3 WALKING_DOWNSTAIRS
  - 4 SITTING
  - 5 STANDING
  - 6 LAYING
 


Tidy`_`Set`_`Q5 - Final Submission of Tidy Data Set for Assignment
------------------------------------------------------------------

####Variables defined in the **Tidy`_`Set`_`Q5** dataframe:

Column #    | Variable Name             |Values or Explanation
------------|---------------------------|------------------------
1	| VolunteerID	              | Range of values between 1-30
2	| ActivityName	              | Activity description . Description as explained in the file activity_labels.txt
3	| TimeBodyAcc-Mean-X	          | The rest of the values are the mean values for all observations for a given participant for each activity he performed.
4	| TimeBodyAcc-Mean-Y	      |
5	| TimeBodyAcc-Mean-Z	      |
6	| TimeBodyAcc-Std-X		      |
7	| TimeBodyAcc-Std-Y		      |
8	| TimeBodyAcc-Std-Z		      |
9	| TimeGravityAcc-Mean-X	      |
10	| TimeGravityAcc-Mean-Y	      |
11	| TimeGravityAcc-Mean-Z	      |
12	| TimeGravityAcc-Std-X	      |
13	| TimeGravityAcc-Std-Y	      |
14	| TimeGravityAcc-Std-Z	      |
15	| TimeBodyAccJerk-Mean-X	  |
16	| TimeBodyAccJerk-Mean-Y	  |
17	| TimeBodyAccJerk-Mean-Z	  |
18	| TimeBodyAccJerk-Std-X		  |
19	| TimeBodyAccJerk-Std-Y		  |
20	| TimeBodyAccJerk-Std-Z		  |
21	| TimeBodyGyro-Mean-X		  |
22	| TimeBodyGyro-Mean-Y		  |
23	| TimeBodyGyro-Mean-Z		  |
24	| TimeBodyGyro-Std-X		  |
25	| TimeBodyGyro-Std-Y		  |
26	| TimeBodyGyro-Std-Z		  |
27	| TimeBodyGyroJerk-Mean-X	  |
28	| TimeBodyGyroJerk-Mean-Y	  |
29	| TimeBodyGyroJerk-Mean-Z	  |
30	| TimeBodyGyroJerk-Std-X	  |
31	| TimeBodyGyroJerk-Std-Y	  |
32	| TimeBodyGyroJerk-Std-Z	  |
33	| TimeBodyAccMag-Mean		  |
34	| TimeBodyAccMag-Std		  |
35	| TimeGravityAccMag-Mean	  |
36	| TimeGravityAccMag-Std		  |
37	| TimeBodyAccJerkMag-Mean	  |
38	| TimeBodyAccJerkMag-Std	  |
39	| TimeBodyGyroMag-Mean		  |
40	| TimeBodyGyroMag-Std		  |
41	| TimeBodyGyroJerkMag-Mean  	|
42	| TimeBodyGyroJerkMag-Std	  |
43	| FreqBodyAcc-Mean-X		  |
44	| FreqBodyAcc-Mean-Y		  |
45	| FreqBodyAcc-Mean-Z		  |
46	| FreqBodyAcc-Std-X			  |
47	| FreqBodyAcc-Std-Y			  |
48	| FreqBodyAcc-Std-Z			  |
49	| FreqBodyAccJerk-Mean-X	  |
50	| FreqBodyAccJerk-Mean-Y	  |
51	| FreqBodyAccJerk-Mean-Z	  |
52	| FreqBodyAccJerk-Std-X		  |
53	| FreqBodyAccJerk-Std-Y		  |
54	| FreqBodyAccJerk-Std-Z		  |
55	| FreqBodyGyro-Mean-X		  |
56	| FreqBodyGyro-Mean-Y		  |
57	| FreqBodyGyro-Mean-Z		  |
58	| FreqBodyGyro-Std-X		  |
59	| FreqBodyGyro-Std-Y		  |
60	| FreqBodyGyro-Std-Z		  |
61	| FreqBodyAccMag-Mean		  |
62	| FreqBodyAccMag-Std		  |
63	| FreqBodyAccJerkMag-Mean	  |
64	| FreqBodyAccJerkMag-Std	  |
65	| FreqBodyGyroMag-Mean		  |
66	| FreqBodyGyroMag-Std		  |
67	| FreqBodyGyroJerkMag-Mean  	|
68	| FreqBodyGyroJerkMag-Std	  |

---
title: "ReadMe"
author: "Manuel Gonzalez"
date: "July 26, 2014"
output: html_document
---

run_analysis.R
Code that reads, merges, summarizes the Samsung datasets for data collected with the accelerometers from the Samsung Galaxy S phone.

1. The working directory is set to the location of the script.
2. The test data must reside in the test subfolder within the data subfolder.
3. The train data must reside in the train subfolder within the data subfolder.
4. Additional files (activity_labels.txt and features.txt) must reside in the data subfolder.
5. The code requires package reshape2.

The code executes as follows:

1. Activity and Features labels are read in.
Activity -- Activity codes and labels are read from activity_labels.txt.  dataframe
Features -- Features are read from features.txt. dataframe

2. Relevant features are identified.
Features.mean -- Features whose label terminate in mean() are selected as mean variables. array
Features.std -- Features whose label terminate in std() are selected as sd variables. array

3. Test files are read.
subject_test -- subject identifiers are read from subject_test.txt. dataframe
y_test -- activity identifiers are read from y_test.txt.  dataframe
X_test -- features data are read from X_test.txt.  dataframe
Columns in the above are appropriately labeled at reading.

4. Mean and std test files are created.
Subsets for the features data are created from the selected columns before.
X_test.mean -- features containing means.  dataframe
X_test.std -- features containing stds.  dataframe

5. Creation of a Test dataframe
subject_test, y_test, X_test.mean, X_test.std are combined into a single Test.df dataframes

6. Train files are read.
subject_train -- subject identifiers are read from subject_train.txt. dataframe
y_train -- activity identifiers are read from y_train.txt.  dataframe
X_train -- features data are read from X_train.txt.  dataframe
Columns in the above are appropriately labeled at reading.

7. Mean and std train files are created.
Subsets for the features data are created from the selected columns before.
X_train.mean -- features containing means.  dataframe
X_train.std -- features containing stds.  dataframe

8. Creation of a Train dataframe
subject_train, y_train, X_train.mean, X_train.std are combined into a single Train.df dataframes

9. Creation of Total.df
Test.df and Train.df are joined to create a Total.df dataframe.

10. Melt Total file
Total.melt is created from Total.df by melting.  Subject and Activity are used as ids.

11. Recast into tidy file
Total.melt is cast into Tidy.df applying the function mean and only on Activity.

12. Labels are asigned to Activity
Activity variable in Tidy.df gets converted into a factor and labels are assigned from Activity dataframe.

13. Tidy.df gets outputed
The tidy dataframe is outputed to the data subdirectory.

14. Column names are extracted to use for codebook.

15. Column names are outpued to use for codebook.

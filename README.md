# Lab-1-ML-assigment
Student Performance Prediction
This project utilizes the tidyverse, tidymodels, and janitor R packages to predict student performance based on various features. The primary goal is to apply logistic regression to classify students based on their final results (Pass/Fail) using features such as disability status and the Index of Multiple Deprivation (IMD) band.

Data
The data, named studentInfo.csv, includes multiple variables related to student demographics, study information, and final outcomes. This project focuses on the final_result, disability, and imd_band variables for predicting student performance.

Preprocessing
Mutating Variables: The final_result variable is converted into a binary factor variable named pass, where 1 indicates a pass, and 0 indicates a failure. Both pass and disability are treated as factor variables.
Feature Engineering: The imd_band variable is converted into a factor with ordered levels and then into an integer to reflect the socioeconomic status.
Model Building
Data Splitting: The dataset is split into training (80%) and testing (20%) sets to evaluate the model's performance.
Recipe Creation: A recipe is defined to specify the model formula and preprocessing steps.
Model Specification: Logistic regression is chosen for classification, utilizing the glm engine.
Workflow: The model and recipe are added to a workflow for streamlined processing.
Model Evaluation
Fitting: The model is fit to the training data, and its performance is evaluated on the testing set.
Resampling: A resampling object is created for the testing data to further validate the model.
Predictions: Predictions are collected and used to assess the model's accuracy by comparing predicted classes with actual outcomes.
Interpretation
The model's accuracy is calculated by examining the proportion of correct predictions. This provides insights into the model's effectiveness in predicting student performance based on the given features.

Conclusion
This project demonstrates the use of logistic regression for predicting student performance, offering a framework for further exploration and analysis. Future work could involve incorporating additional features, tuning model parameters, or exploring different modeling approaches.


student_dataset <- read.csv(r"(C:\Users\pc\Downloads\oulad-students.csv)")

student_dataset$pass_indicator <- as.factor(ifelse(student_dataset$final_result == "Pass", 1, 0))
student_dataset$disability_factor <- as.factor(student_dataset$disability)


imd_levels <- c("0-10%", "10-20%", "20-30%", "30-40%", "40-50%", "50-60%", "60-70%", "70-80%", "80-90%", "90-100%")
student_dataset$imd_band_numeric <- as.numeric(factor(student_dataset$imd_band, levels = imd_levels))

set.seed(20230712)
sample_size <- floor(0.8 * nrow(student_dataset))
train_indices <- sample(seq_len(nrow(student_dataset)), size = sample_size)

training_set <- student_dataset[train_indices, ]
testing_set <- student_dataset[-train_indices, ]

model <- glm(pass_indicator ~ disability_factor + imd_band_numeric, family = binomial(link = "logit"), data = training_set)


summary(model)


predictions <- predict(model, testing_set, type = "response")
predicted_classes <- ifelse(predictions > 0.5, 1, 0)

actual_classes <- as.numeric(testing_set$pass_indicator) - 1  # Because our factors start at 1, but classes are 0 and 1
accuracy <- mean(predicted_classes == actual_classes)
print(paste("Accuracy:", accuracy))


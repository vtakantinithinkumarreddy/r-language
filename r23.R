# Step 1: Get the current working directory
getwd()

# Step 2: Use file.choose() to select the file manually
wbcd_path <- file.choose()  # This will open a dialog to choose the file
wbcd <- read.csv(wbcd_path, stringsAsFactors = FALSE)

# Step 3: Display the structure of the dataframe
str(wbcd)

# Step 4: Remove the first column (ID column)
wbcd <- wbcd[-1]

# Step 5: Show the frequency table for the 'diagnosis' column
table(wbcd$diagnosis)

# Step 6: Convert 'diagnosis' to a factor with appropriate labels
wbcd$diagnosis <- factor(wbcd$diagnosis, levels = c("B", "M"), labels = c("Benign", "Malignant"))

# Step 7: Generate a proportion table, round the values, and multiply by 100
round(prop.table(table(wbcd$diagnosis)) * 100, digits = 1)

# Step 8: Provide summary statistics for specific columns
summary(wbcd[c("radius_mean", "area_mean", "smoothness_mean")])

# Step 9: Define a normalization function
normalize <- function(x) {
  return((x - min(x)) / (max(x) - min(x)))
}

# Step 10: Apply normalization to columns 2 through 31 and convert to a new dataframe
wbcd_n <- as.data.frame(lapply(wbcd[2:31], normalize))

# Step 11: Provide summary statistics for the 'area_mean' column
summary(wbcd_n$area_mean)

# Step 12: Split the data into training and test sets
wbcd_train <- wbcd_n[1:469, ]
wbcd_test <- wbcd_n[470:569, ]

# Step 13: Extract labels for training and test sets
wbcd_train_labels <- wbcd[1:469, 1]
wbcd_test_labels <- wbcd[470:569, 1]

# Step 14: Install and load the 'class' package (installation only needed once)
# install.packages("class") # Uncomment this line if you haven't installed 'class'
library(class)

# Step 15: Apply the k-Nearest Neighbors algorithm
wbcd_test_pred <- knn(train = wbcd_train, test = wbcd_test, cl = wbcd_train_labels, k = 21)

# Step 16: Print predictions (optional)
print(wbcd_test_pred)


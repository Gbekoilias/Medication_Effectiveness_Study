#install relevant packages for statistical testing l
#import the dataset
data <- read.csv("table_data.csv")
# Import the dataset
data <- read.delim("table_data.csv", sep = "\t", header = TRUE)
library(knitr)
print(kable(data))

#print out the rows and columns
print(data)

# Create a contingency table
contingency_table <- table(data$Group, data$Improvement)

# Perform the chi-square test
result <- chisq.test(contingency_table)
print(result)

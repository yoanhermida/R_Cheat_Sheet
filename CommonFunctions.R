###################################
# Author: Yoan G. Hermida         #
# Purpose: Common R functions.    #
# Date: 8 May 2025                #
###################################

# install a package
install.packages("packageName")

# load a package
library(packageName)      

# get help
help(functionName)

# create a data frame
value1 = "some value"
value2 = "another value"
value3 = "last value"
myDataFrame = (value1)

# get current working directory
getwd()

# set working directory
setwd("/path/to/directory/")

# find variables within a dataset
grep("variableName", names(datasetName))

# function that consumes a spreadsheet and runs simple linear regression against the data
# file_path should be /something/like/this.xlms
# dv = dependent variable
# iv = independent variable
# control = control
simple_regression_spreadsheet <- function(file_path, dv, iv, control) {

  # it is not best practice to load packages this way
  # but i'm doing it anyway
  # this assumes you've already install.packages("readxl")
  library(readxl)

  print("\nReading spreadsheet and converting it into a dataframe.\n")  
  df <- read_excel(file_path)

  print("\nRegression results.\n")
  model <- lm(dv~iv+control, data=df)
  summary(model)
}

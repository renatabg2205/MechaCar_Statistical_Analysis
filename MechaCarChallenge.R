#Use the library() function to load the dplyr package.
library(tidyverse)

#Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar.csv <- read_csv("Resources/MechaCar_mpg.csv")
head(MechaCar.csv)

#Perform linear regression using the lm() function. 
#In the lm() function, pass in all six variables (i.e., columns), and add the dataframe as the data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar.csv)

#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar.csv))
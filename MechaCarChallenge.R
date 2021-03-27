#Use the library() function to load the dplyr package.
library(tidyverse)

#Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar <- read_csv("Resources/MechaCar_mpg.csv")
head(MechaCar)

#Perform linear regression using the lm() function. 
#In the lm() function, pass in all six variables (i.e., columns), and add the dataframe as the data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar)

#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar))

#import and read in the Suspension_Coil.csv file as a table
suspensionCoil <- read_csv("Resources/Suspension_Coil.csv")
head(suspensionCoil)

#Write an RScript that creates a total_summary dataframe using the summarize() function to get the 
#mean, median, variance, and standard deviation of the suspension coil's PSI column.
total_summary <- suspensionCoil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to 
#group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column.
lot_summary <- suspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
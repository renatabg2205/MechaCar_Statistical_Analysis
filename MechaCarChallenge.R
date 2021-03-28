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

#Write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different 
#from the population mean of 1,500 pounds per square inch.
t.test(log10(suspensionCoil$PSI),mu=mean(log10(suspensionCoil$PSI)))

#Write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine 
#if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
lot1 <- subset(suspensionCoil, Manufacturing_Lot == "Lot1")
t.test(log10(lot1$PSI),mu=mean(log10(suspensionCoil$PSI)))

lot2 <- subset(suspensionCoil, Manufacturing_Lot == "Lot2")
t.test(log10(lot2$PSI),mu=mean(log10(suspensionCoil$PSI)))

lot3 <- subset(suspensionCoil, Manufacturing_Lot == "Lot3")
t.test(log10(lot3$PSI),mu=mean(log10(suspensionCoil$PSI)))
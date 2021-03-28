# MechaCar_Statistical_Analysis


## Linear Regression to Predict MPG
<br>
Output from the linear regression:
<br>
<img src="Images/linear_regression.PNG" alt="Screenshot of the output from the linear regression">

<ul>
<li>Vehicle length and ground clearance provided a non-random amount of variance to the mpg values in the dataset.
<li>The p-value is 5.35e-11, which is much smaller than the significance level (assuming a significance level of 0.05%). Therefore, we can state that there is sufficient evidence to reject the null hypothesis, which means that the slope of the linear model is not considered to be zero.
<li>The multiple r-squared value is 0.71, which means that roughly 71% of all predictions will be correct when using this linear model and each dependent value will not be determined by random chance and error.
<li>The adjusted r-squared value is 0.68, which means that roughly 68% of all predictions will be correct when using this linear model and each dependent value will not be determined by random chance and error.
<li>Based on these results, we can say that this linear model effectively predicts mpg of MechaCar prototypes. 
</ul>

## Summary Statistics on Suspension Coils
<br>
total_summary dataframe:
<br>
<img src="Images/total_summary.PNG" alt="Screenshot of total_summary dataframe">
<br>
lot_summary dataframe:
<br>
<img src="Images/lot_summary.PNG" alt="Screenshot of lot_summary dataframe">
<br>
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The current manufacturing data meets this design specification for all manufacturing lots in total, because the variance is 62.29. As for each lot individually, lots 1 and 2 meet this design specification (variances of 0.97 and 7.46, respectively), however, lot 3 does not meet because the variance is 170.28.
<br>





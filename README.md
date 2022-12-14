# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

-   summary table of a linear model: ![deliverable_1\_summary](deliv_1_lm.png)

1.  A linear regression analysis was performed on 50 prototype MechaCars to predict MPG based on five other variables. Based on the above summary table, it can be determined that two variables, vehicle length and ground clearance, have a statistically significant, non-random impact on the fuel efficiency of the MechaCar.

2.  The slopes of each regression are listed under the "estimate" column. Each coefficient, when converted from scientific notation are all non-zero number, indicating that the slope is considered to be not zero.

The converted coefficients are: vehicle length: 6.267 vehicle weight: .001 spoiler angle: .069 ground clearance: 3.546 AWD: -3.411

3.  This linear model does effectively predict the mpg of the MechaCar. According to the summary table above, the multiple R-Squared value is 0.71, meaning that 71% of variability of the MechaCar's mpg can be explained using this linear model. 0.71 is considered to be a strong, positive correlation.

## Summary Statistics on Suspension Coils

The design specifications for the suspension coils state that the variance in the PSI (pounds/square inch) must not exceed 100psi. Below is a table of summary statistics for the PSI of all the suspension coils on the lot.

![lot_summary](deliv2_totalsum.png)

Based on this table, it appears that the coils all meet the PSI requirements for variance. However, when the cars are grouped by their lot number, this requirement does not hold. As shown in the table below, the variance in lot 3 is 170.28, which is over the maximum variance allowed. Based on these two charts, lots 1 and 2 pass the specification requirements, while the coils from lot 3 do not.

![summary_by_lot](deliv2_lotsum.png)

# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![deliverable_1](https://user-images.githubusercontent.com/92996865/161465221-8f352093-9a72-4e75-8271-0393568a7873.png)

- The intercept, vehicle length, and ground clearance have a significant impact on MPG and are statistically unlikely to produce random amounts of variance.
- It is really impossible to plot the slope of multiple linear regression, however the individual slopes of vehicle length and ground clearance are nonzero because they have a p value less than .05.
- R squared, nor the coefficient of determination is .71, that means that 71% of the variability in MPG is explained by the dependent variables. This can be further tweaked by taking out variables with slopes of zero and seeing how it affects R squared, the goal being to make it higher.
## Summary Statistics on Suspension Coils

![deliverable_2 1](https://user-images.githubusercontent.com/92996865/161465274-95d84b06-e733-4e12-82aa-cfe4d4caf6c8.png)

![deliverable_2 2](https://user-images.githubusercontent.com/92996865/161465302-18fd0c01-fdee-4d09-ad71-666e068fff66.png)

- The variance of all three lots is 62.29 PSI which meets design specifications.
- The variance of lots 1 and 2 meet specifications at .97 PSI and 7.4 PSI; the variance of lot 3 exceeds the 100 PSI at 170 PSI and therefore does not meet specifications.

## T-Tests on Suspension Coils

![deliverable_3 1](https://user-images.githubusercontent.com/92996865/161465449-695f25e6-b9ab-482e-81b1-e205b0fa1ff4.png)

![deliverable_3 2](https://user-images.githubusercontent.com/92996865/161465456-605e1483-d788-4d25-8975-1ed92e0da7ea.png)

- There is not enough evidence to conclude that the random sample from all 3 lots is statistically different than the population.
- There is enough evidence to conclude that lots 1 and 2 are statistically different than the total population
- There is not enough evidence to conclude that lot 3 is statistically different than the total population.
-  When you look back at the variance of each lot, you can see that most of the variance is from lot 3, further supplanting the hypothesis that lot 3 is the most similar to the population, statistically speaking.

## Study Design: MechaCar vs Competition

If we assume that most lots are going to have a similar distribution of cars and car types, then we can just focus on the price of MechaCar vehicles vs. the price of a random sample from a handful of popular competitor lots. I would really just want to get summary statistics for both groups, ie mean, median, standard deviation, and variance. If there is a large discrepancy in variance, then we can group cars by type or safety rating to further root out where the variance is coming from. 

Hypothesis - MechaCar has better prices than the competition if its mean vehicle price is lower than the competition mean vehicle price, while having a similar amount of variance in prices.

Null Hypothesis - MechChar's prices are similar to the competition and therefore competitive if the average price and variance of its cars equal the average price and variance of its competitor's cars.

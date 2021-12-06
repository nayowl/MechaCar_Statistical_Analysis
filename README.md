# MechaCar_Statistical_Analysis
## 1. Overview
MechaCar is  AutosRUs’ newest prototype. This analysis will be used to review the production data for insights that may help the manufacturing team to produce MechaCar. 
The following tasks will be performed in this analysis:
* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.


## 2. Resources
Data Source: MechaCar_mpg.csv, Suspension_Coil.csv

Software: Rstudio


## 3. Result
### Linear Regression to Predict MPG

<p align="center">
    <img src="https://user-images.githubusercontent.com/88597187/144699367-653ba96b-cd12-422f-bfa7-79a70a2cb888.png" width="400" height="175" />
</p>
<p align="center">
  <sub>Figure 1 Linear Regression Model MechaCar </sub>
</p>

<br>
<br>

<p align="center">
    <img src="https://user-images.githubusercontent.com/88597187/144699444-ea531fda-f016-4285-951f-8a4503934114.png"  width="500" height="300"/>
</p>
<p align="center">
  <sub>Figure 2 Statistical Summary of the Linear Regression Model MechaCar </sub>
</p>

<br>
<br>

As shown in Figure 1,  Mechacar Linear Regression model is using Multiple Linear Regression. Multiple linear regression is a statistical model that extends the scope and flexibility of a simple linear regression model. Instead of using a single independent variable to account for all variability observed in the dependent variable, a multiple linear regression uses multiple independent variables to account for parts of the total variance observed in the dependent variable. Each independent variable must be observed  to determine if there is a significant relationship with the dependent variable. Subsequently, the r-squared value of the model need to be evaluated  to determine if the model sufficiently predicts the  dependent variable.


#### :question: Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
To determine whether variables/coefficients provided a non random amount of variance or not, we can see the value of Pr(>|t|) in Figure 2. Each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According the result , Intercept (5.08e-08), vehicle_length (2.60e-12) and ground clearance(5.21e-08) are statistically unlikely to provide random amounts of variance to the linear model and that means they have significant impact on mpg. When an intercept is statistically significant, it means that the intercept term explains a significant amount of variability in the dependent variable when all independent vairables are equal to zero. It might mean that the significant features( vehicle_length and ground clearance)  may need scaling or transforming to help improve the predictive power of the model or  there are other variables and factor that have not been included in the model that can help explain the variability of the dependent variable .

#### :question: Is the slope of the linear model considered to be zero? Why or why not?

Linear regression tests the following hypotheses:

H0 : The slope of the linear model is zero, or m = 0

Ha : The slope of the linear model is not zero, or m ≠ 0

If there is no significant linear relationship, each dependent value would be determined by random chance and error. Therefore, our linear model would be a flat line with a slope of 0. The p-value for the model tests the null hypothesis (H0) that the linear model is equal to zero. A low p-value (< 0.05) indicates that we can reject the null hypothesis. According to the result in Figure 2 the p value is 5.35e-11 , which make it less than 0.05. Based on this, we can safely assume that we can reject the null hyphotesis.That means the slope of the linear model is not zero and there are significant relationship between other variables and mpg.

#### :question: Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? 

To quantify how well linear model can be used to predict future observations, the  linear regression functions will calculate an r-squared value. The r-squared (r2) value is also known as the coefficient of determination and represents how well the regression model approximates real-world data points. The r-squared value is 0.7149 which means that roughly 71,49% of the dependent variable is explained using this linear model. Therefore, it can be confirmed that this linear model predit mpg of Mechacar prototypes effectively.




### Summary Statistics on Suspension Coils

Based on Figure 3 and Figure 4 below , we can see that the mean and median for all manufactoring lots and each lot are fairly close together, means that the dataset has symmetrical distribution.

<p align="center">
    <img src="https://user-images.githubusercontent.com/88597187/144701101-ea6b4502-4cc6-4ce2-9473-5127b1687e67.png" width="400" height="75"/>
</p>
<p align="center">
  <sub>Figure 3 Total Summary </sub>
</p>

<br>
<br>

<p align="center">
    <img src="https://user-images.githubusercontent.com/88597187/144701147-8f2eebf6-0018-4ead-b2c8-038e16407c36.png" width="400" height="100" />
</p>
<p align="center">
  <sub>Figure 4 Lot Summary </sub>
</p>

#### :question: The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

According to the total summary the value for variance is 62.29356. This means that the variance of the suspension coil for all manufacturing lots didn't exceed 100 pounds per square inch and the current manufacturing data meet the design specfication.

For each individual lot, Variance value  for lot 1 is 0.9795918, lot 2 is 7.4693878 and lot 3 is 170.2861224. By this result we can conclude that Lot 1 and lot 2 meet design specification while lot 3 didn't meet the design specification.


### T-Tests on Suspension Coils

The one-sample t-test is used to determine whether there is a statistical difference between the means of a sample dataset and a hypothesized, potential population dataset. For this case,  the  one-sample t-test is used to test the following hypotheses:

    H0 : There is no statistical difference between the suspension coil data  mean and population mean of 1,500 pounds per square inch.
    Ha : There is a statistical difference between the suspension coil data   mean and population mean of 1,500 pounds per square inch.

The p-value for the model tests the null hypothesis (H0) that there is no statistical difference between the suspension coil data  mean and population mean of 1,500 pounds per square inch. A low p-value (< 0.05) indicates that we can reject the null hypothesis.


<p align="center">
    <img src="https://user-images.githubusercontent.com/88597187/144702265-b6cce648-9897-416e-87cf-44c259096318.png" width="400" height="200"/>
</p>
<p align="center">
  <sub>Figure 5 T-test for All Manufacturing Lot</sub>
</p>

<br>

<br>

<p align="center">
    <img src="https://user-images.githubusercontent.com/88597187/144702295-6a04d3b2-15e9-42f5-9fb8-e11c08bddde5.png" width="400" height="200" />
    <img src="https://user-images.githubusercontent.com/88597187/144702296-3ed88c16-5c7a-4e5c-bdc7-6e16fd3063d6.png" width="400" height="200" />
    <img src="https://user-images.githubusercontent.com/88597187/144702297-0dd61c55-3bf6-40c6-84fa-2b4e7b7496d1.png" width="400" height="200" />
</p>
<p align="center">
  <sub>Figure 6 T-test for Each Lot </sub>
</p>



Figure 5  shows us the t-test value for all  manufacturing lot. The p-value is 0.06028 and it's bigger than 0.05. This means that  we do not have sufficient evidence to reject the null hypothesis, and the two means not statistically different.

Figure 6 shows us the t-test value for each  manufacturing lot. The p-value for lot 1 is 1 and  lot 2 is 0.6072. Both p-value for lot 1 and lot 2 are bigger than 0.05. This means that  we do not have sufficient evidence to reject the null hypothesis, and the two means not statistically different for lot 1 and lot 2. On the other hand, the p-value for lot 3 is 0.04168 and less then 0.05, this indicates that we can reject the null hypothesis for lot 3 and the two means are statistically different for lot 3.



### Study Comparing the MechaCar to the Competition

:question: What metric or metrics are you going to test?

One of the metric that will be tested is maintenance cost. Maintenance cost is one of the biggest expense of car owner. By having lower maintenance cost compare to other competitor , AutosRUs can attract consumer to buy MechaCar.

:question: What is the null hypothesis or alternative hypothesis?

 H0: Maintenance Cost have no effect for customer decision to buy car

 H1: Maintenance Cost have effect for customer decision to buy car


:question: What statistical test would you use to test the hypothesis? And why?

Stastical test that will be used is ANOVA. ANOVA is used to test the means of a single dependent variable across a single independent variable with multiple groups. In this case is maintenance cost mechacar compared to to other competitor.

:question: What data is needed to run the statistical test?

Data that will be needed is maintenance cost of mechacar and competitors and consumer survey about different maintenance cost compare to the willingness to buy a car based on the maintenance cost














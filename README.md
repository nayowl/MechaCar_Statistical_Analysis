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
To determine whether variables/coefficients provided a non random amount of variance or not, we can see the value of Pr(>|t|) in Figure 2. Each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According the result , Intercept (5.08e-08), vehicle_length (2.60e-12) and ground clearance(5.21e-08) are statistically unlikely to provide random amounts of variance to the linear model and have significant impact on mpg. When an intercept is statistically significant, it means that the intercept term explains a significant amount of variability in the dependent variable when all independent vairables are equal to zero. It might mean that the significant features( vehicle_length and ground clearance)  may need scaling or transforming to help improve the predictive power of the model or  there are other variables and factor that have not been included in the model that can help explain the variability of the dependent variable .

#### :question: Is the slope of the linear model considered to be zero? Why or why not?


#### :question: Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? 











### 

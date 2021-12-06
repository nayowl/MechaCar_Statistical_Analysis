## Deliverable 1 

###load the dplyr package
library(dplyr)

###Import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F) #read in dataset
head(MechaCar)

### Perform linear regression using the lm() function 
Mechalm <- lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=MechaCar)

###Determine the p-value and the r-squared value for the linear regression model
summary(Mechalm)



### Deliverable 2


###Import and read in the Suspension_Coil.csv file as a dataframe
SuspCoil <- read.csv('Suspension_Coil.csv',stringsAsFactors = F) #read in dataset
head(SuspCoil)

###  RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column
total_summary <- SuspCoil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

### creates a lot_summary dataframe using the group_by() and the summarize() functions
lot_summary <- SuspCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))




### Deliverable 3
###t.test for all manufactoring lot
t.test(SuspCoil$PSI,mu=1500)

### t.test for manfacturing lot1 
lot1 <- subset(SuspCoil,Manufacturing_Lot=='Lot1')
t.test(lot1$PSI,mu=1500)

### t.test for manfacturing lot2 
lot2 <- subset(SuspCoil,Manufacturing_Lot=='Lot2')
t.test(lot2$PSI,mu=1500)

### t.test for manfacturing lot3 
lot3 <- subset(SuspCoil,Manufacturing_Lot=='Lot3')
t.test(lot3$PSI,mu=1500)





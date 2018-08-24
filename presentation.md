<style type="text/css">

.reveal pre code {
  display: block; padding: 0.3em;
  font-size: 1em;
  
</style>


Miles Per Gallon 
========================================================
author: Veronica Muedsam
date: 08/23/2018
autosize: true
transition: rotate
transition-speed: slow

Overview
========================================================
In this presentaion the R dataset mtcars used. 

A linear regression model is used to predict the miles per gallon for a car with selected properties.

The user can select the following:
- `Weight`
- `Gear`
- `Cylinder`

After input of the properties, a plot is created and will give a predicted miles per gallon of a car.

Data Set
========================================================

The data used for this application is mtcars available in R.
The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles.



```
      mpg             cyl             disp             hp       
 Min.   :10.40   Min.   :4.000   Min.   : 71.1   Min.   : 52.0  
 1st Qu.:15.43   1st Qu.:4.000   1st Qu.:120.8   1st Qu.: 96.5  
 Median :19.20   Median :6.000   Median :196.3   Median :123.0  
 Mean   :20.09   Mean   :6.188   Mean   :230.7   Mean   :146.7  
 3rd Qu.:22.80   3rd Qu.:8.000   3rd Qu.:326.0   3rd Qu.:180.0  
 Max.   :33.90   Max.   :8.000   Max.   :472.0   Max.   :335.0  
      drat             wt             qsec             vs        
 Min.   :2.760   Min.   :1.513   Min.   :14.50   Min.   :0.0000  
 1st Qu.:3.080   1st Qu.:2.581   1st Qu.:16.89   1st Qu.:0.0000  
 Median :3.695   Median :3.325   Median :17.71   Median :0.0000  
 Mean   :3.597   Mean   :3.217   Mean   :17.85   Mean   :0.4375  
 3rd Qu.:3.920   3rd Qu.:3.610   3rd Qu.:18.90   3rd Qu.:1.0000  
 Max.   :4.930   Max.   :5.424   Max.   :22.90   Max.   :1.0000  
       am              gear            carb      
 Min.   :0.0000   Min.   :3.000   Min.   :1.000  
 1st Qu.:0.0000   1st Qu.:3.000   1st Qu.:2.000  
 Median :0.0000   Median :4.000   Median :2.000  
 Mean   :0.4062   Mean   :3.688   Mean   :2.812  
 3rd Qu.:1.0000   3rd Qu.:4.000   3rd Qu.:4.000  
 Max.   :1.0000   Max.   :5.000   Max.   :8.000  
```

Shiny files
========================================================

The Shiny package is used when building this application.

The source code is in 2 files:
- `ui.R`
- `server.R`

Both files can be found here: [GitHub repo](https://github.com/Vmudsam)

Application
========================================================


The application shows a plot of the weight and miles per gallon, a regression line on the plot is also shown. 

The data set used is mtcars in R.

By selecting specific features of the cars
- `Weight`
- `Gear`
- `Cylinder`

the user can predict the miles per gallon and the regression is recalculated based on the cars that have the selected features. 

If there are no features selected the regression model will use all data.



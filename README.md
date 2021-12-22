# ML_Models
### [Telecom Work Measurement Study - OLS](/R_Files/Caravan_Insurance_Study.R)
This model looks at some [telecom data](/Data/tel.csv) and evaluates different linear regression models that determines the relationship between the dependent variable of number of hours worked, and some independent variables. 

### [Caravan Insurance Study - Logistic Regression](/R_Files/Caravan_Insurance_Study.R)

In this study, I was given a [dataset](/Data/Caravan.csv) that indicates whether owners purchased caravan insurance or not. This dataset also includes some demographic information about the owners. This study runs a logistic regression in order to see how these characteristics relate to the insurance buying decision of the caravan owners.

### [Claims Study - Lasso Regression](R_Files/Claims_Study.R)

The [dataset](/Data/claims.zip) includes insurance claims severities from Allstate. After adjusting the dataset to show the claims of higher than $100, I ran an OLS regression with the full model. Next, with a Lasso regression, I have found the smallest mean-squared-error. Then with cross validation I found best lambda for the Lasso model.

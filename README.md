# Machine Learning Models
### [Telecom Work Measurement Study - OLS](/R_Files/Telecom_Work_Measurement_Study.R)
This model looks at some [telecom data](/Data/tel.csv) and evaluates different linear regression models that determines the relationship between the dependent variable of number of hours worked, and some independent variables. 

### [Caravan Insurance Study - Logistic Regression](/R_Files/Caravan_Insurance_Study.R)

In this study, I was given a [dataset](/Data/Caravan.csv) that indicates whether owners purchased caravan insurance or not. This dataset also includes some demographic information about the owners. This study runs a logistic regression in order to see how these characteristics relate to the insurance buying decision of the caravan owners.

### [Claims Study - Lasso Regression](R_Files/Claims_Study.R)

The [dataset](/Data/claims.zip) includes insurance claims severities from Allstate. After adjusting the dataset to show the claims of higher than $100, I ran an OLS regression with the full model. Next, with a Lasso regression, I have found the smallest mean-squared-error. Then with cross validation I found best lambda for the Lasso model.

### [Wine Data Study - Classification Tree Model](/R_Files/Wine_Data_Classification.R)

This study looks at a [Wine Data](/Data/winequality-red.csv) dataset that includes some features about the quality and characteristics of a variety of wines. The outcome variable is the quality of wines. This model aims to use a classification tree to find the most relevant set of features that can predict the wine quality the best.

### [Wine Data Study - Random Forest, Gradient Boosting, and Neural Networks](/R_Files/Wine_Data-trees_and_nnets.R)

Expanding on the classification tree from the previous study, this study makes a random forest model and then a gradient boosting model. Later on, using neural networks I compared a single layered model and a model with hidden layers.

### [Wine Data Study - Clustering](/R_Files/Wine_Data-clustering.R)

Using the same Wine qualities dataset, running a clustering analysis to find out about any clusters in the set that might be useful for explaining data. 

# Data Visualization

Please take a look at my Tableau Public profile for the visuals I've made in some projects.

Profile: https://public.tableau.com/app/profile/pelin.adanir

# Optimization Projects

Application Project:

This project aims to minimize the risk of a generated portfolio based on a list of stocks, by changing the weights on these stocks. Individuals can generate a custom portfolio that finds the lowest risk by using a list of stocks of their choosing. In the example code, I have used the QQQ index stocks [here](/Data/QQQ_portfolio.xlsx). The results of the code shows the total annual return of the portfolio as well as the weights on the stocks that make up the portfolio. 


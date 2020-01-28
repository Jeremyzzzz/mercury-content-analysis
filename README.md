## Factors Influencing Total Mercury in the hair of Kuwaiti

### Introduction
  As we all know, mercury is a poisonous pollutant to environment. For human being, mercury is a powerful neurotoxin. Nowadays, lots of human activities increase mercury content of environment, for instance, metal combustion, ore milling and etc. Various pollutants are getting involved in food chain and potentially doing harm to our health. Since mercury can be remaining in the hair and our hair almost has no process of metabolism for any elements in our body. Therefore, hair is a good way to measure the level of mercury containing in body. Because environment pollution and food safety have been hot issues these days. I decided to learn this topic for the final project.
  
  The data I used for analysis is **“Factors Influencing the Total Mercury and Methyl Mercury in the Hair of Fisherman in Kuwait”** (*N.B. Al-Majed and M.R. Preston, 2000*). There are n = 135 observations collected from a group of Kuwaiti fisherman and a control group of non-fisherman in the data set. Since **Methyl Mercury(mg/g)** is included in the **(TotHg)Total Mercury(mg/g)**, there will be some functional relationship between these two variables. Therefore, Total Mercury containing in the hair of Kuwaiti will be the response variable(Yi) of the regression model. Also, I guess the following variables are the **explanatory variables**.
  
- X1(fisherman): Fisherman which indicates whether he’s a fisherman or not;
- X2(age): Age(years) ranging from 16 - 58 years old;
- X3(restime): Residence Time(years) ranging form 0 – 25 years; 
- X4(weight): Weight(kg); 
- X5(fishmlwk): Fish meals consumed per week ranging from 0 - 21;
- X6(fishpart): Parts of fish consumed, indicate variable with 4 levels, 0 indicates not eating fish, 1 indicates muscle tissue only, 2 indicates muscle tissue and sometimes whole fish and 3 indicates whole fish; 
- X7(height): Height(cm). 

  Before analysis, I think fishmlwk and fishpart will directly affect TotHg in the hair. Also, fisherman will show more TotHg in the hair than non-fisherman. Weight, height, age and restime might be the factors of TotHg.
The main analysis for the **regression model** is **hypothesis test** and **ANOVA**. I will conduct the inference test from **SLR** to **MLR** to improve the model to a better **reduced model**.

**The detailed analysis is included in the final report pdf in this folder**

### Conclusion
Final Model is <img src="http://bit.ly/2t46vuc" align="center" border="0" alt=" \sqrt{ \widetilde{Y} } = -1.457879 + 0.041793 * weight + 0.033532 * fishmlwk" width="537" height="29" />

In conclusion, there is strong evidence to show that there is linear relationship between TotHg and weight as well as fishmlwk. Not surprisingly, the more fish we eat per week, the more mercury content will be shown in the hair since fish has been part of food chain of human beings. One person’s weight also has positive linear relationship with mercury content in the hair. **In this regression model, β0 has no practical meaning since there’s no one
with weight 0. From the model, we can also know that when holding fishmlwk constant and increasing 1 kg in weight, the mean value of square root of total mercury will increase by 0.041793 mg/g. When holding weight constant and increasing 1 fish meal per week, the mean value of square root of total mercury will increase 0.033532 mg/g.**
However, there’s no statistically distinguishable relationship between total mercury in the hair and age as well as residence time in Kuwait. Meanwhile, following the procedure to the final model, variable fish part and fisherman indicator has been reduced although they show strong evidence of linear relationship towards total mercury. Consequently, according to SLR of fisherman indicator, I can conclude that group of fisherman shows 1.5642 mg/g higher mercury content in the hair than non-fisherman. Also, according to SLR of fish parts, the plot shows that people not consume fish has significantly low mercury content in the hair than those who consume fish while there is no evidence to show that fish parts we consume will affect total mercury.
As environment pollution becomes serious these days, the mercury coming from industrial pollutants and human being activities has access to the nature cycle. We can choose to consume less fish these days to prevent from intaking mercury and keep healthy.



### Appendix
#### Graphs
SLR: plot(f$TotHg ~ f$fisherman)
![alt text](https://raw.githubusercontent.com/Jeremyzzzz/Data-Analysis_predict-mercury-in-the-hair/master/boxplots.png)

Correlation chart
![alt text](https://raw.githubusercontent.com/Jeremyzzzz/Data-Analysis_predict-mercury-in-the-hair/master/correlation%20plots.png)

MLR: checking assumption for reduced_model
![alt text](https://raw.githubusercontent.com/Jeremyzzzz/Data-Analysis_predict-mercury-in-the-hair/master/assumptions%20checking1.png)

MLR: checking assumption for model after transformation
![alt text](https://raw.githubusercontent.com/Jeremyzzzz/Data-Analysis_predict-mercury-in-the-hair/master/assumptions%20checking2.png)
![alt text](https://raw.githubusercontent.com/Jeremyzzzz/Data-Analysis_predict-mercury-in-the-hair/master/outliers.png)

#Asım Caner Osmanağaoğlu
#2nd Week, HW1
mice_data <- data.frame(diet = c("low_calorie", "low_calorie", "normal", "normal", "normal", "low_calorie", "normal", "low_calorie"), weight = c(20, 22, 26, 28, 27, 21, 29, 23))
mice_data
low_calorie_diet <- mice_data[mice_data$diet == "low_calorie", "weight"] 

normal_diet <- mice_data[mice_data$diet == "normal", "weight"]

t.test_result <- t.test(low_calorie_diet, normal_diet)
t.test_result

#H0,the null hyphothesis: the means of low calorie diet and nornmal diet are equal, which means there is no statistical difference.
#HA,the alternative hyphothesis: there is a significant statistical difference between those data, which means true difference in means is not zero. They are not equal
#The result of t-test shows that p-value is above 0.05 which means we can reject the null hyphothesis. This mean there is a statistical interpretation. The means of two samples are not equal.
#We can continue with the alternative hyphothesis. To illustrate, these two samples vary statistically.

#HW2
set.seed(123)
mouse_weights <- rnorm(24, mean=25, sd=3)
simulated_diffs <- replicate(10000, {
  shuffled_weights <- sample(mouse_weights) 
  group_1 <- shuffled_weights[1:12]
  group_2 <- shuffled_weights[13:24]
  abs(mean(group_1) - mean(group_2)) })
observed_diff <- 2.5
frequency <- mean(simulated_diffs >= observed_diff)
cat("Gözlemlenen farkın veya daha büyük bir farkın simülasyonlarda elde edilme sıklığı:", frequency)
#The frequency results shows that simulated difference and observed different are close.
#If we consider a big simulation of data, the frequency of difference in means decreases. 
#This means that with outnumbered data, the random processes could be decreased.
#
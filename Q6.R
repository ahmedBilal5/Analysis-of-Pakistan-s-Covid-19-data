#comparing death rate
Countries = c('Pakistan', 'India', 'United States', 'China', 'New Zealand', 'United Kingdom');
#source of data: https://www.worldometers.info/coronavirus/#countries
Cases = c(926695, 28441986, 34154305, 91170, 2681, 4494699);
Deaths = c(21022, 338013, 611020, 4636, 26, 127794);
Data = data.frame(Countries, Cases, Deaths);
Data

Data$Death_Rate = Data$Deaths/Data$Cases;
names = c('Pak', 'Ind', 'US', 'China', 'NZ', 'UK');
barplot(Data$Death_Rate, ylab = 'Death Rate', xlab = 'Countries', main = "Death Rates Of Countries", names.arg = names, col = rainbow(length(names)));
barplot(Data$Death_Rate, xlab = 'Death Rate', main = "Death Rates Of Countries", names.arg = names, horiz=TRUE, las=1, col = rainbow(length(names)));

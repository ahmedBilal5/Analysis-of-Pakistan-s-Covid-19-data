Provinces=c("ICT", "Punj", "Sindh", "KPK", "BA", "GB", "AJk");
Deaths=c (763,10084,5051,4095,282,107,548);
Colors=c("red","green","blue","yellow","purple","pink","brown");
bar=barplot(Deaths,main="Province-wise deaths",col=Colors,legend=TRUE,xlab="Provinces",ylab="Deaths",ylim=c(0,max(Deaths+1000)),names.arg = Provinces);
text(x=bar,y=Deaths+500,labels=Deaths);
legend("topright",fill=Colors,Provinces);
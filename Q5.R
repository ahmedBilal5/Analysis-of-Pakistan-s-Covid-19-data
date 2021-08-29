Dataset=c(20,24,24,18,57,24,19,34,21,20,18,19,19,57,18,22,21,20,21,21,20,27,21,26,25,22,21,24,21,22,38,48,22,41,21,19,57,25,57,21,20,55,39,48,56,42,23,21,19,48,45,46,59,45,53, 42,64,24,63,36,55,60,24,25,55,52,34,31,56,54,52,45,35,52,64,54,42,56,22,67,73,82,89);




maximum=max(Dataset);
minimum=min(Dataset);
range=max(Dataset)-min(Dataset);
ClassWidth=9
ClassWidth=ceiling(ClassWidth);
Extra=range%%ClassWidth;
Extra=ceiling(Extra);
DataOnBoundaries=seq(minimum-0.5,maximum+Extra,by=ClassWidth)
DataFreq=cut(Dataset,DataOnBoundaries);
freq=table(Dataset);
InVerticalForm=cbind(freq)	



colors=c("red","blue","green","yellow","purple","lightblue2","brown","black");

i=1:8
 Midpoints=c(22.5+(ClassWidth*(i-1)))

b=c(18,27,36,45,54,63,72,81,90);

A=table(DataFreq)
h=hist(Dataset,
main="Frequency of Dataset",
col=colors,
xlab="Midpoints of classes",
ylab="frequency",
breaks=b,
ylim=c(0,max(A+10)),xaxt="n"
)
axis(1, Midpoints, labels = Midpoints,tick = FALSE, padj= -1.5);
text(Midpoints,A+6,labels=A)
classes=c("19-27","27-36","36-45","45-54","54-63","63-72","72-81","81-90")
legend("topright",classes , fill=colors,cex=0.6,ncol=2)



freqPoly=cbind(table(DataFreq));
Pol=plot(Midpoints,freqPoly,type="o",ylim=c(0,max(freqPoly+9)),xaxt="n",col=colors,lwd = 4,main="Frequecy polygon",ylab="Frequency",xlab="Midpoints for age classes");
axis(1, Midpoints, labels = Midpoints, tick = FALSE, padj= -1.5)
text(Midpoints,A+6,labels=A)
polygon(c(min(Midpoints),Midpoints,max(Midpoints)),c(-1,freqPoly,-1),col=rgb(red=0.2, green=0.2, blue=1.0, alpha=0.4))
legend("topright",classes , fill=colors,cex=0.6,ncol=2)



CummulativeFreq=cumsum(table(DataFreq))
Pol=plot(Midpoints,CummulativeFreq,type="o",xaxt="n",col=colors,lwd=3,ylim=c(0,max(CummulativeFreq+10)),xlab="Mid points for ages",ylab="Cumulative frequecy",main="Cumulative frequency polygon")
axis(1, Midpoints, labels = Midpoints, tick = FALSE, padj= -1.5)
text(x=Midpoints,y=CummulativeFreq+6,labels=CummulativeFreq);
polygon(c(min(Midpoints),Midpoints,max(Midpoints)),c(0,CummulativeFreq,0),col=rgb(red=0.2, green=0.2, blue=0.2, alpha=0.4))
legend("topleft",classes , fill=colors,cex=0.5,ncol=2)


A=density(Dataset)
plot(A,lwd=2,xlab="Ages",ylab="Density",main="Rug plot with Density graph",col="red");
rug(Dataset, side = 1,col="blue",lwd=2)





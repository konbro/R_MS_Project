x1=c()
y1=c()
z1=c()
i=0
for(i in c(x))
{
  x1[i]<-x[i]
  y1[i]<-1
  if(y_Sun[i]==1)
  {
    z1[i]<-1
  }
  else if(y_Sun[i]==0)
  {
    z1[i]<-0
  }
}
dtf = data.frame(x1,y1,z1)


par(mar=c(5,5.5,5,3))
plot(x, y_temp, type= "l", xlab = "Numer dnia", ylab="Wartosc w 100PLN \n Wartosc w stopniach", ylim=c(0,30), lwd="2")
title(main="Wykres sprzedazy oraz temperatur w okresie letnim")
lines(x, y_pln,lty=1, lwd="2", col="blue")
legend(45, 29, legend=c("Sprzedaz", "Temperatura"),
       col=c("BLUE", "BLACK"), lty=1:1, cex=0.8, lwd=2:2)
j=0
for(j in c(x))
{
  if(dtf$z1[j]==1)
  {
    points(dtf$x1[j],dtf$y1[j], col="YELLOW", pch=16)
  }
  if(dtf$z1[j]==0)
  {
    points(dtf$x1[j],dtf$y1[j], col="BLACK", pch=16)
  }
}

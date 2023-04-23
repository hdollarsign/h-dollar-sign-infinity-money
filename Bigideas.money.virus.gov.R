#load the money
money=read.table('inifinity_money_printer_virus.exe.txt', header=T, sep="\t")

#plot the money
plot(money$Counties,money$Inst,type="n",xlab="number of counties",ylab="number of prisons/jails")
text(money$Counties,money$Inst,money$State, cex= .5)

#Make a regression model of the money

myModel = lm(money$Inst~money$Counties)
summary(myModel)
#least square fitting of the money
abline(myModel,col="red",lw="3")

#clean  up the money a little bit
newMeanings = jitter(money$Inst, 5)
plot(money$Counties,newMeanings,type="n",xlab="number of counties",ylab="number of jails/prisons")
text(money$Counties,newMeanings,money$State, cex= .5)

# BOOM! Infinity money. But, no, really it is the number of prisons and jails within each state compared to the number of counties within the state. 

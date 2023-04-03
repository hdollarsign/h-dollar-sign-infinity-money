#load table
dataMeaning=read.table('inifinity_money_printer_virus.exe.txt', header=T, sep="\t")

length = Counties meanings = Inst

#plot with the labels
plot(dataMeaning$Counties,dataMeaning$Inst,type="n",xlab="number of counties",ylab="number of prisons/jails")
text(dataMeaning$Counties,dataMeaning$Inst,dataMeaning$entry, cex= 1)

#Now we'd like to build a regression model, i.e., find the equation for the straight line that best defines the dataset. 

myModel = lm(dataMeaning$Inst~dataMeaning$counties)
summary(myModel)
#least square fitting
abline(myModel,col="red",lw="3")

#quick and dirty trick to avoid label overlap (best solution: export to
# vector format, like eps, and edit in separate software)
newMeanings = jitter(dataMeaning$Inst, 5)
plot(dataMeaning$Counties,newMeanings,type="n",xlab="number of counties",ylab="number of jails/prisons")
text(dataMeaning$Counties,newMeanings,dataMeaning$entry, cex= 1)

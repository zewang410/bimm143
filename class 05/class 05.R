#'---
#'title:"Class 05 Introduction oto R graphics"
#'author:"Ze Wang"
#'date:"Jan 24,2019
#'output:github_document
#'---


weight<-read.table("bimm143_05_rstats/weight_chart.txt",header=TRUE)

plot(weight[,1],weight[,2],typ="o")

plot(weight$Age,weight$Weight,typ="o",main="some main title",
     pch=15,cex=2,col="red",lwd=3)

# Try a barplot
barplot(VADeaths, beside = TRUE)
barplot(VADeaths, beside = FALSE)

## Input our feature count data
mouse<-read.table("bimm143_05_rstats/feature_counts.txt",header=TRUE,sep="\t")

barplot(mouse$Count,horiz=TRUE,names.arg=mouse$Feature,las=2)

# Change margin so we can see the labels
par(mar=c(5.1,11.1,4.1,2.1))
barplot(mouse$Count,horiz=TRUE,names.arg=mouse$Feature,las=2)

#add color
barplot(mouse$Count,horiz=TRUE,names.arg=mouse$Feature,las=2,col=rainbow(11))

# Section 3A
mf<-read.table("bimm143_05_rstats/male_female_counts.txt",header=TRUE,sep="\t")

barplot(mf$Count,names.arg=mf$Sample,las=2,col=c("blue2","red2"))

# Section 3B
e<-read.table("bimm143_05_rstats/up_down_expression.txt",header=TRUE)

# how many genes
nrow(e)

# how many up , down and all around?
table(e$State)

plot(e$Condition1,e$Condition2,col=e$State)

# Play
palette(c("red","lightgray","blue"))
plot(e$Condition1,e$Condition2,col=e$State)






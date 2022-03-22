#Part C

#Read a .csv file containing 4 columns of numbers
#Convert columns to proportions (i.e. divide each number by the total for each column)
#Create a 4-panel graph containing histograms for each of the 4 columns.
#Output the figure to a pdf file.

#loading in packages
library(ggplot2)
library(seqinr)
library(readr)
library(stringr)

#reading file
FileFromD=read.csv(file="DNAseq.csv") #reading the .csv file from part D

#Proportions
FileFromD$A/(sum(FileFromD$A))
FileFromD$G/(sum(FileFromD$G))
FileFromD$C/(sum(FileFromD$C))
FileFromD$T/(sum(FileFromD$T))

#creating pdf

pdf(file = "/Users/glafiraermakova/Documents/GitHub/core_assignment/histogram.pdf",   # The directory you want to save the file in
    width = 4, 
    height = 4)

#histograms
par(mfrow=c(2,2))
pA<-hist(FileFromD$A)
pG<-hist(FileFromD$G)
pC<-hist(FileFromD$C)
pT<-hist(FileFromD$T)

dev.off()

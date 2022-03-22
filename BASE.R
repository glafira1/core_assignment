#!/usr/bin/env Rscript


library(seqinr)
library(readr)
library(stringr)
library(littler)

countingfile= function(FileName) { #function is called "countingfile" and the parameter is "FileName"
  DNAseq_r=read_file(f=paste(FileName,".seq",sep="")) #this opens the python file and names it DNAseq_r
  Base_count= c(str_count(DNAseq_r, "A"), #These count the length of each base in the DNAseq_r
                str_count(DNAseq_r, "G"),
                (str_count(DNAseq_r, "C"))-1, 
                str_count(DNAseq_r, "T"))
  Base_count=paste(Base_count, collapse=",")
  write_file(Base_count,f= paste(FileName,".count",sep="")) #this saves the file as "FileName.count"
}


args <- commandArgs(trailingOnly = TRUE)
cat(args, sep = "\n")

FileName=args[1]
countingfile(args[1])



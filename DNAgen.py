#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Mar  7 17:18:38 2022

@author: glafiraermakova
"""

#Part A:

import random
def DNAseq (FileName,Nb): #this creates the custon function
    FileName= open(FileName+'.seq','w+') #creating a new file
    dna=["A","G","C","T"] #creating base pairs
    dnaseq=''.join(random.choices(dna,k=Nb)) #this gives random sequence of DNA and joins it
    FileName.write('>Random Sequence of DNA \n') #this is to add the first line in the file for FASTA
    FileName.write(dnaseq) #adding the dna seq to the file
    FileName.close() #closing the file
    
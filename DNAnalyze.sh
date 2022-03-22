#!/bin/bash 
#This is part D of the assignment 
#Create 100 input files each containing 1000 bases of data and named DNAseqNNN.seq where NNN is the iteration number from 001 to 100, using the DNAgen.py script you wrote in A.
#Produce 100 input files and then output to single file .csv using the cat function – the output file should contain 100 rows of four numbers separated by comma

echo "A","G","C","T" > DNAseq.csv

for i in {1..100}
do
python3 -c 'import DNAgen; DNAgen.DNAseq("DNAseq'$i'",1000)'
Rscript BASE.R "DNAseq"$i
cat DNAseq$i.count | sort >> DNAseq.csv
done




###################

#cat &gt; #this is to concatenate into one file

#python -c "from DNAgen import function;DNAseq(FileName,Nb)"

#python -c "import DNAgen; DNAgen.DNAseq("FileName","Nb")"

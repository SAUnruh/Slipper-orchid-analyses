
#!/bin/bash

#SBATCH -J run-fastqc
#SBATCH -o out.o%j
#SBATCH -e err.e%j
#SBATCH -n 4
#SBATCH --mem=8G

#for each file in a directory that ends in .fastq.gz submit it to fastqc through the slurm scheduler (sbatch)
#the output is placed in the fastqc_output directory

for file in *.fastq.gz;
        do sbatch --wrap="fastqc -o fastqc_output/ --noextract ${file}";
done;

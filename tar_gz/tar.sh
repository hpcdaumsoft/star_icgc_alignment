#!/bin/bash 
if [ "$#" -ne 2 ]; then echo "[usage:] tar.sh  read_R1.fastq  read_R2.fastq"
 exit 1;
fi

FASTQ_1=$1
FASTQ_2=$2
FASTQ_1_lnk="sample_R1.fastq"
FASTQ_2_lnk="sample_R2.fastq"

ln -s $FASTQ_1 ./$FASTQ_1_lnk
ln -s $FASTQ_2 ./$FASTQ_2_lnk

OUT_TAR_GZ=$3.tar.gz

OUTPUT=./out
mkdir $OUTPUT

$GALAXY_HOME/package/DAUMSOFT/RNA-seq/TAR/tar czlf $OUTPUT/sample.tar.gz  $FASTQ_1_lnk $FASTQ_2_lnk
          

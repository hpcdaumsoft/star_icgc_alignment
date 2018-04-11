#!/bin/bash

if [ "$#" -ne 1 ]; then
 echo "[usage:] ICGC_pipeline_RUN.sh  tar.gz(fastq in file)"
 exit 1;
fi

INPUT_TAR_GZ=$1

ln -s $INPUT_TAR_GZ  ${INPUT_TAR_GZ}.tar.gz
INPUT_TAR_GZ=${INPUT_TAR_GZ}.tar.gz

$GALAXY_HOME/package/DAUMSOFT/RNA-seq/ICGC_STAR_ALIGNMENT_PIPELINE/ICGC_pipeline.sh $INPUT_TAR_GZ > log.out 2>&1   


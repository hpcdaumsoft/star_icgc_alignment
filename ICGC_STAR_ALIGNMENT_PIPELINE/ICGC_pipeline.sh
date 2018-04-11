#!/bin/bash

if [ "$#" -ne 1 ]; then
 echo "[usage:] ICGC_pipeline.sh  fastq_in_tar.gz"
 exit 1;
fi

#FASTQ_1=$1
#FASTQ_2=$2
#SAMPLE_ID=$3
#TAR_FILE=$SAMPLE_ID".tar"
TAR_FILE=$1

export PATH=/storage/data/program/GDC_TGCA-Harmonized/RNA-Seq/bin/ICGC-STAR_ALIGNMENT_PIPELINE:$PATH

#tar cvfh $TAR_FILE  $FASTQ_2  $FASTQ_1 

STAD_ALIGN=~/package/DAUMSOFT/RNA-seq/ICGC_STAR_ALIGNMENT_PIPELINE/star_align.py
STAR_INDEX_PATH=~/refs/hg38/gdc/Index_Files/GDC.h38.d1.vd1_STAR2_Index_Files/star_genome_d1_vd1_gtfv22
WORK_DIR=./wrk
OUTPUT_BAM=./out
REFERENCE=~/refs/hg38/gdc/GRCh38.d1.vd1_Reference_Sequence/GRCh38.d1.vd1.fa
RUN_THREAD_NUM=8
rm -rf $WORK_DIR
rm -rf $OUTPUT_BAM
mkdir $WORK_DIR
mkdir $OUTPUT_BAM

python $STAD_ALIGN              \
--genomeDir $STAR_INDEX_PATH    \
--tarFileIn $TAR_FILE  \
--workDir $WORK_DIR             \
--out $OUTPUT_BAM \
--genomeFastaFiles $REFERENCE \
--runThreadN $RUN_THREAD_NUM \
--outFilterMultimapScoreRange 1 \
--outFilterMultimapNmax 20 \
--outFilterMismatchNmax 10 \
--alignIntronMax 500000 \
--alignMatesGapMax 1000000 \
--sjdbScore 2 \
--limitBAMsortRAM 0 \
--alignSJDBoverhangMin 1 \
--genomeLoad NoSharedMemory \
--outFilterMatchNminOverLread 0.33 \
--outFilterScoreMinOverLread 0.33 \
--twopass1readsN -1 \
--sjdbOverhang 100 \
--outSAMstrandField intronMotif \
--outSAMunmapped Within


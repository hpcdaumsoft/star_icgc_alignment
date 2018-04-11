# star_icgc_alignment
RNA-Seq Genome Mapper

ICGC aligner from "https://docs.gdc.cancer.gov/Data/Bioinformatics_Pipelines/Expression_mRNA_Pipeline/#icgc-star-alignment-pipeline"

Put program and xml the location

1. define GALAXY_HOME=/storage/home/galaxy at .bash_profile

2. mkdir -p $GALAXY_HOME/package/DAUMSOFT/RNA-seq/TAR

3. cp -rf   tar_gz/tar          $GALAXY_HOME/package/DAUMSOFT/RNA-seq/TAR

4. cp -rf   tar_gz/tar.sh       $GALAXY_HOME/package/DAUMSOFT/RNA-seq/TAR

5. cp -rf   tar_gz/tar_gz.xml   $GALAXY_HOME/package/DAUMSOFT/RNA-seq/TAR

6. mkdir -p $GALAXY_HOME/package/DAUMSOFT/RNA-seq/ICGC_STAR_ALIGNMENT_PIPELINE

7. cp -rf   ICGC_STAR_ALIGNMENT_PIPELINE/*  $GALAXY_HOME/package/DAUMSOFT/RNA-seq/ICGC_STAR_ALIGNMENT_PIPELINE/
     
8. add the below xml  to   ~/galaxy/config/tool_conf.xml

<section id="rnaseq_name" name="RNA-Seq">
    <tool file="user define directory/tar_gz.xml" />
    <tool file="user define directory/icgc_star2_wrapper.xml" />
</section>

9. galaxy restart

then. you will run this program on galaxy.


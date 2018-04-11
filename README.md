# star_icgc_alignment
RNA-Seq mapper

ICGC aligner from "https://docs.gdc.cancer.gov/Data/Bioinformatics_Pipelines/Expression_mRNA_Pipeline/#icgc-star-alignment-pipeline"

program and xml location

1. put the "tar_gz" on  user define directory

2. put the "ICGC_STAR_ALIGNMENT_PIPELINE"  on  user define directory
      
3. add the below xml  to   ~/galaxy/config/tool_conf.xml

<section id="rnaseq_name" name="RNA-Seq">
    <tool file="user define directory/tar_gz.xml" />
    <tool file="user define directory/icgc_star2_wrapper.xml" />
</section>

4. galaxy restart



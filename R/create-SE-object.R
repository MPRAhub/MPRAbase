require(dbplyr)
require(DBI)
require(RSQLite)
require(dplyr)
require(SummarizedExperiment)
require(tidyr)



#' This function creates a Summarized Experiment Object containing Massively Parallel Reporter Assay (MPRA) data.
#'
#' @param genome_build
#' @param genomic_note
#' @param metadata
#' @param reference_fasta string path
#' @param assigned_counts_replicate_list
#' @export

MPRAsnakeflow.ExportObject.SummarizedExperiment <-  function(genome_build, genomic_note, 
                                                       metadata, reference_fasta, assigned_counts_replicate_list){
    
    sequences <- readDNAStringSet(reference_fasta)

    sequence_ids <- names(reference_fasta)
    sequence_data <- as.data.frame(reference_fasta)
    
    # Create a data table with sequence IDs and sequences
    fasta_table <- data.table(id = sequence_ids, sequence = sequence_data)
    
    coord_all_table = merge(cor,fasta_table,by.x = "V4", by.y = "id")
    coord_all_table$genomic_note=genomic_note
    coord_all_table$genome_build=genome_build
    gr <- with(coord_all_table, GRanges(
        seqnames = V1,
        ranges = IRanges(start = V2 , end = V3),
        strand = V6,
        names = V4,
        genome_build = genome_build,
        sequence=sequence.x,
        genomic_note=genomic_note
    ))
    
    rep = metadata$DNA_RNA_reps
    colData={}
    for (j in 1:rep){
            colData=rbind(colData,data.frame(REP=j,
                                             data.frame(ENCODE_ID=metadata$ENCODE_ID,
                                                        sample_status=c("NA"),
                                                        replicate_status=c("NA"),
                                                        cell_lines=metadata$Cell_line_tissue)
                                             ))
                          }

    merged_table <- Reduce(function(...) merge(..., by = "name", all = TRUE), 
                            assigned_counts_replicate_list)
    
    mcol_subset <- merged_table[merged_table$name %in% mcols(gr)$names, ]
    ActivityScore <- cbind(mcol_subset$ratio.x,mcol_subset$ratio.y,mcol_subset$ratio)
    colnames(ActivityScore) <- metadata$replicates
    rownames(ActivityScore) <- mcol_subset$name
    subset_gr <- gr[gr$names %in% rownames(ActivityScore)]

    ## make SE
    se <- SummarizedExperiment(assays=list(ActivityScore=ActivityScore),
                                 rowRanges=subset_gr,
                                 colData=colData)
    number_of_elements <- as.numeric(nrow(ActivityScore))
    metadata$number_of_elements <- number_of_elements
    metadata(se) <- metadata

    
}



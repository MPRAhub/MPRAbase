library(iSEE)

initial <- list()

################################################################################
# Settings for Row data table 1
################################################################################

initial[["RowDataTable1"]] <- new("RowDataTable", Selected = "A:HNF4A-ChMod_chr12:106514415-106514559_[chr12:106514401-106514572]", 
    Search = "", SearchColumns = c("", "", "", ""), HiddenColumns = character(0), 
    VersionInfo = list(iSEE = structure(list(c(2L, 10L, 0L)), class = c("package_version", 
    "numeric_version"))), PanelId = c(RowDataTable = 1L), PanelHeight = 500L, 
    PanelWidth = 4L, SelectionBoxOpen = FALSE, RowSelectionSource = "---", 
    ColumnSelectionSource = "---", DataBoxOpen = FALSE, RowSelectionDynamicSource = FALSE, 
    ColumnSelectionDynamicSource = FALSE, RowSelectionRestrict = FALSE, 
    ColumnSelectionRestrict = FALSE, SelectionHistory = list())

# replication_corr_panel <- SampleAssayPlot(YAxisSampleName='rep1',
#                 XAxis='Sample name',
#                 XAxisSampleName='rep2',
#                 Assay='log2-ActivityScore',
#                 ColorByDefaultColor = 'red' ,
#                 ColorBySampleNameAssay = 'log2-ActivityScore')

# initial <- list(replication_corr_panel, ColumnData())
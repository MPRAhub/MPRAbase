library(iSEE)

initial <- list()

initial[["RowDataTable1"]]  <- RowDataTable()

initial[["SampleAssayPlot1"]]  <- SampleAssayPlot(YAxisSampleName='rep1',
                XAxis='Sample name',
                XAxisSampleName='rep1',
                Assay='ActivityScore',
                ColorByDefaultColor = 'red' ,
                ColorBySampleNameAssay = 'ActivityScore')

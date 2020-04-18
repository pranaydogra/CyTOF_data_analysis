BiocManager::install("flowCore")
library(flowCore)

setwd("[ENTER PATH TO WHERE THE FILES ARE STORED ON YOUR SYSTEM]")

for (f in list.files(getwd())) {
  infile <- read.FCS(f, transformation = FALSE)
  write.FCS(infile, filename=f, delimiter="#")
}

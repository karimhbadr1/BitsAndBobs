"123"=="123"
library(openxlsx)
library(tidyverse)
data<-tribble(
  ~"Q1",~"Q2a",~"Q2b",~"Q2c",~"Q20",
  1,3,2,1,2,
  1,1,2,3,2,
  1,1,3,2,2,
  2,3,2,1,1
)
for (j in 1:nrow(data)){
  print(paste0(data[j,grep("^Q2[a-z]",colnames(data))],collapse = ""))
}

#https://www.rexegg.com/regex-quickstart.html



library(tidyverse)
data<-tibble(a=c(1,2,NA),b=c(NA,4,NA),c=c("wk","ih","ah"),d=c(1,9,12))

data<-data %>% 
  rowwise() %>% 
  mutate(e=sum(c_across(c(a:b,d)),na.rm = TRUE)) %>% 
  ungroup()

data<-data %>% 
  rowwise() %>% 
  mutate(f=if_else(sum(c_across(a:b),na.rm = TRUE)>0,1,2)) %>% 
  ungroup()

data<-data %>% 
  rowwise() %>% 
  mutate(g=if_else(sum(c_across(a:b),na.rm = TRUE)>0,TRUE,FALSE)) %>% 
  ungroup()

#comment
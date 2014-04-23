# !usr/bin/Rscript
f<-file("stdin")
g<-readLines(f)

for (i in unlist(strsplit(g," ")))
  cat(i,"\t",nchar(i),"\n")

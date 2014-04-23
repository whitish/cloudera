# !usr/bin/Rscript
f<-file("stdin")
g<-readLines(f)

for (i in unlist(strsplit(g," ")))
  #cat(i,"\t",nchar(i),"\n") #map <word> \t <length>
  cat(substr(i,0,1),"\t",nchar(i),"\n") #map <first letter in word> \t <word's length>

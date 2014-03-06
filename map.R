# !usr/bin/Rscript
#Cloudera. R read from stdin
#f<-file("stdin")
#t<-(read.table(f))
#print(t)

#Cloudera. R read from stdin
f<-file("stdin")
g<-readLines(f)
print(g)
#for (i in strsplit(read.table(f,sep=" ")," "))
#print(i)
#cat(substr(i,0,1),"\t",nchar(i),"\n")

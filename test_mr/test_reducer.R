#Hadoop Test Reducer
require(stringr)

f<-file("stdin")
#g<-read.table(f,header=FALSE, sep="\t")
#f<-c("a\t3","b\t4","c\t5")
g<-readLines(f)
#print(g)
d<-strsplit(g, "\t")
#print(length(d))
#print(d[[3]][1])

#keys<-matrix(ncol=3)
#names <- c("key","wordcount","lettercount")
#colnames(keys) <- names

keys<-NULL
keys<-data.frame()
#keys<-rbind(keys,data.frame(key="7",wordcount=0,lettercount=0))
keys$key<-as.character(keys$key)
keys$wordcount<-as.integer(keys$wordcount)
keys$lettercount<-as.integer(keys$lettercount)
#keys$wordcount[which(keys$key==5)]<-667

#keys.keys<-NULL
#keys.wordcount<-0L
#keys.lettercount<-0L
for(i in 1:length(d)) {
  newkey<-str_trim(d[[i]][1])
  newkeylength<-as.integer(str_trim(d[[i]][2]))
  
  if(newkey %in% keys$key) {
    keys$wordcount[which(keys$key==newkey)]<-keys$wordcount[which(keys$key==newkey)]+1;
    keys$lettercount[which(keys$key==newkey)]<-keys$lettercount[which(keys$key==newkey)]+newkeylength;
  }
  else { keys<-rbind(keys,data.frame(key=as.character(newkey),wordcount=1,lettercount=newkeylength)) }
}

write.table(paste(keys$key,keys$lettercount/keys$wordcount),col.names=F,quote=F,row.names=F,sep="\t")

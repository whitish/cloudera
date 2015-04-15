#Hadoop Test Mapper
require(stringr)
f<-file("stdin")
#f <- c("arm","foot","lefroo", "bafoobar", " ", "     ", "Dgfdsb", "&gkjhg ", "gfdg&vbjhk","fgdgfd'fgsdgds")
#g<-(readLines(f))
g<-readLines(f)
#print(g)
#v<-strsplit(g, " ")

#cat(v,"\n")
for (i in unlist(str_extract_all(g, "[a-zA-Z]+")))
{
  #cat(i,"\t",nchar(i),"\n") #map <word> \t <length>
  if (nchar(unlist(i)!=0)) {
    cat(tolower(substr(i,0,1)),"\t",nchar(i),"\n") #map <first letter in word> \t <word's length>
  }
}



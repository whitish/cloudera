#!/usr/bin/python

__author__ = 'aleksei'

import sys

key = None
wordcount = 0.0
length = 0.0

for line in sys.stdin.readlines():
    line = line.strip()

    newkey = line.split('\t')[0]
    newlength = int(line.split('\t')[1])
    #print 'newkey:'+repr(newkey) + 'newlength:'+repr(newlength)

    if not key:
        key = newkey

    if key != newkey:
        print key + '\t' + repr(length/wordcount)
        wordcount = 1
        length = newlength
        key = newkey
    else:
        wordcount += 1.0
        length = length + newlength

print key + '\t' + repr(length/wordcount)

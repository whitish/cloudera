#!/usr/bin/python
__author__ = 'aleksei'

import fileinput
import sys
import re

noalpha = re.compile('\W')

for line in sys.stdin.readlines():
        for w in noalpha.split(line):
                if len(w)>0 :
                        print w[0].lower() + '\t' + repr(len(w))
~       

__author__ = 'aleksei'


import sys
import re

ipregx = re.compile('^\d{1,3}\.\d{1,3}\.\d{1,3}.\d{1,3}')


for line in sys.stdin.readlines():
    for ip in ipregx.findall(line):
        print ip.strip() + '\t' + repr(1)

    #line = line.strip()
    #ipaddress = ip.findall(line,0,16)
    #print repr(ipaddress) + '\t' + repr(1)

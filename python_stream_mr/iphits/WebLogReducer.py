__author__ = 'aleksei'

import sys

key = None
hits = 0

for input in sys.stdin.readlines():
    newkey = input.split('\t')[0]

    if not key:
        key = newkey

    if key != newkey:
        print key + '\t' + repr(hits)
        hits = 1
        key = None
    else:
        hits += 1

print newkey + '\t' + repr(hits)

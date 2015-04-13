#!/usr/bin/python

# Build a file of all instances with 10 or more tags assigned

import re
from os.path import expanduser

home = expanduser("~")

f=open(home + '/data/awsUtils/instances.dat')
out = open(home + '/data/awsUtils/tagCounts.dat', 'w')
elements = ""
tagcount = 0
for line in f:
    if re.match("TAGS", line) is not None:
        tagcount = tagcount + 1 
    if re.match("INSTANCE", line) is not None:
        if tagcount > 9:
            out.write(elements[7] + "\t" + str(tagcount) + "\n")
        tagcount = 0
        elements = line.split()
if tagcount > 9:
    out.write(elements[7] + "\t" + str(tagcount) + "\n")
f.close()
out.close()

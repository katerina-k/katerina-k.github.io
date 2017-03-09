 #!/usr/bin/env python

import json
import os
from sys import *
from referencesController import *

# add paths for source files
your_path = os.path.dirname(os.path.abspath(__file__))
path.append(your_path)

# the file name of the Paperpile export in JSON format
json_file = your_path+"/paperpile.json"

# import json data
with open(json_file) as data_file:
    data = json.load(data_file)
data_file.close()

# call controller
x = referencesController(data, your_path)

# format the data (this will call class referenceFormatter)
x.formatReferences()

# set sorting order (author: 1, year: 2, month: 3, day: 4) 
# note: negative numbers indicate reverse sorting
#x.sortOrder([-2,1])

# set tags to include (the names of your Paperpile tags you want to include)
x.setTags(["pches_publications"])

# set folder to write references to
#if not x.setPubDir("pubs"):
#    print "Directory does not exist and could not be written"
#    exit()

# write references (this will call class referenceWriter)
x.writeReferences()

exit()
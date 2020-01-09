#!/usr/bin/python
# -*- coding: utf-8 -*-
import time
from subprocess import Popen
import datetime

website_list=['www.oslomet.no','158.36.78.65','www.dnb.no','www.bbcnews.com',
'www.sydney.edu.au','www.harvard.edu','www.myabc.com']

for i in website_list:
    print "***********website "+i+" status******************"
    p1 = Popen (['ping', '-c', '5', i])
    time.sleep(10)
    print "----"+'/n'
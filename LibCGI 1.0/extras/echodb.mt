#!/usr/local/bin/Revolution
put "<html><body>Here's the records from the addressbook database:<p>" into buffer
 put "Error"&& connid after buffer
 # put it after buffer
  put "Content-Length:" && the length of buffer & cr & cr 
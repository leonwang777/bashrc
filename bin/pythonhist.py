#!/usr/share/anaconda3/bin/python3
import readline
for i in range(readline.get_current_history_length()):
         print (readline.get_history_item(i + 1))
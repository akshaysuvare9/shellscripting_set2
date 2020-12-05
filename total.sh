#!/bin/bash
   
   dir=$1
   ls -l $dir | awk 'NR ==1'
   awk 'BEGIN { print "Name                      Bytes           Kbytes          Mbytes"}'
  ls -l $dir | awk '{printf "%-20s \t  %-5s \t  %-6s \t  %-6s\n", $9, $5, $5/1000, $5/1000000}' | awk 'NR > 1'

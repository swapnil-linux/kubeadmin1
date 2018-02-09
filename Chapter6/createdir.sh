#!/bin/bash
for node in `kubectl get nodes|grep -v NAME|awk '{print $1}'`
 do 
   ssh swapnil@$node sudo mkdir -p /mnt/data1
   ssh swapnil@$node sudo mkdir -p /mnt/data2
done

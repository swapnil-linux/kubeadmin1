#!/bin/bash
kubectl delete pv pv10gb
kubectl delete pv pv20gb
for node in `kubectl get nodes|grep -v NAME|awk '{print $1}'`
 do 
   echo creating /mnt/data1 on $node
   ssh swapnil@$node sudo rm -rf /mnt/data1
   echo creating /mnt/data2 on $node
   ssh swapnil@$node sudo rm -rf /mnt/data2
done

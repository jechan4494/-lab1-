#!/bin/bash
n1=0
n2=1
echo "피보나치 수열 10개:"
for i in {1..10}; do
  echo -n "$n1 "
  n3=$(expr $n1 + $n2)
  n1=$n2
  n2=$n3
done
echo ""

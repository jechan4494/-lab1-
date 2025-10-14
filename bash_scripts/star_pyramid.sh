#!/bin/bash
lines=5
while [ $lines -gt 0 ]; do
  for ((i=0;i<lines;i++)); do echo -n "*"; done
  echo ""
  lines=$((lines-1))
done

#!/bin/bash
for i in {1..9}; do
  for j in {1..9}; do
    echo -n "$i*$j=$((i*j)) "
  done
  echo ""
done

#!/bin/bash


for i in {1..5}; do
  output=""
  for ((j=1; j<=i; j++)); do
    output+="$j"
  done
  echo $output  
done

for i in {1..5}; do
  output=""
  for ((j=5; j>=i; j--)); do
    output+="$j"
  done
  echo $output  
done

for i in {5..1}; do
  output=""
  for ((j=1; j<=i; j++)); do
    output+="$j"
  done
  echo $output  
done





#!/bin/bash

# For a set of reference files in the same directory, combine them into a single fasta file with proper formatting.
# Make sure this file is in the same directory as the other text files.
# Make sure nothing else in the directory but the reference sequences contain "ref".

n=1
for f in ./*ref*.txt; do 
    echo ">ref$n"
    cat "${f}"
    echo
    let n+=1
done > REF.fa


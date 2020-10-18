#!/bin/bash


awk 'BEGIN { FS=","; }
      NR == 1 {
      printf "%-35s %-18s kontak\n", $1, $2;
    }
' $1 | tr '|' '\b';

awk -v seed=$RANDOM 'BEGIN { FS="|"; srand(seed); }
      NR > 1 {
        number=rand()*10000000000;
        if ( number > 99999999 ) {
          printf "%-35s %-40s \t +628%d\n", $1, $2, number;
        }
      }
' $1

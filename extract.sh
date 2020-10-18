#!bin/bash

awk 'BEGIN { FS="," ; }
        $1 !~ /".*/ {
          if ( $3 ~ /[a-zA-Z0-9.-]+"/ ) {
            printf "%-35s | \t %s, %s\n", $1, $2, $3 ;
          }
          else if ( $4 ~ /[a-zA-Z0-9.-]+"/ ) {
            printf "%-35s | \t %s, %s, %s\n", $1, $2, $3, $4;
          }
          else if ( $2 == "" ) {
            printf "%-35s | \t JL. CEMPAKA\n", $1;
          }
          else {
            printf "%-35s | \t %s\n", $1, $2 ;
          }
          next;
        }
        $2 !~ /".*/ {
          if ( $1 ~ /".*/ ) {
            if ( $2 ~ /[a-zA-Z0-9.-]+"/ ) {
              printf "%s, %-35s, | \t %s\n", $1, $2, $3 ;
            }
            else if ( $3 ~ /[a-zA-Z0-9.-]+"/ ) {
              printf "%s, %s, %-35s, | \t %s\n", $1, $2, $3, $4 ;
            }
          }
          else {
            printf "%-34s | \t %s\n", $1, $2 ;
          }
          next;
        }
' $1 | tr '"' '\b'

#!/bin/bash

NPROC=`grep ^NPROC DATA/Par_file | grep -v -E '^[[:space:]]*#' | cut -d = -f 2 | cut -d \# -f 1`

mpirun -np $NPROC ./bin/xfwat_fwd_measure_adj -s tele -m Mfwd -r 1
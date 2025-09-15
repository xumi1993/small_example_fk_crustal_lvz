#!/bin/bash

cp DATA/pert_model.h5 DATA/tomo_files/tomography_model.h5
NPROC=`grep ^NPROC DATA/Par_file | grep -v -E '^[[:space:]]*#' | cut -d = -f 2 | cut -d \# -f 1`

mpirun -np $NPROC ./bin/xfwat_mesh_databases -s tele
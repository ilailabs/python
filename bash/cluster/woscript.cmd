#!/bin/bash

#PBS -l nodes=node05:ppn=16
#####=========WALL-TIME========================
#PBS -l walltime=240:00:00
#####=========GIVE THE NAME OF THE JOB==============
#PBS -N IMPRINT_PROJECT
#####==============================
#PBS -mea
#####==========GIVE YOUR EMAIL ADDRESS HERE================
#PBS -M me16d404@smail.iitm.ac.in
#####===================================
MPIPATH="/Apps/openmpi/bin/mpirun"
LAMMPS_PATH="/Apps/lammps/src/lmp_mpi"
#####=========GIVE THE NAME OF THE INPUT FILE==============
INPUT="wo_cpulse.lammps"
cd $PBS_O_WORKDIR
/Apps/openmpi/bin/mpirun -np 16 /Apps/lammps/src/lmp_mpi -in $INPUT > out_interface
#####==============================

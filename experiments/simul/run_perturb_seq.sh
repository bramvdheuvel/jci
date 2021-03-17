#!/bin/bash

# Copyright (c) 2018-2020, Joris M. Mooij. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be found in the LICENSE file.

# run as run.sh <pSysObs> <pContext> <eps> <eta> <N> <acyclic> <surgical> <seed> <iters>

echo run_perturb_seq.sh called with arguments "$@"

iters=$1
seed=$2

# Local
outdir=test3
fname='jci8'

# # Hactar
# outdir=/test2/$seed
# fname='test2'
# mkdir -p $outdir

# lcd
Rscript ../run.R test2/$fname lcd mc 0 $iters
Rscript ../run.R $outdir/$fname lcd nb 0 $iters
# for mode in mc mccon mcsct mcsctcon sc sccon; do
#   ../Rcmd ../run.R $outdir/$fname lcd $mode 0 $iters
# done
# cif
#for mode in mc mccon mcsct mcsctcon sc sccon; do
#  ../Rcmd ../run.R $outdir/$fname cif $mode 0 $iters
#done
# fci
# for mode in obs pooled meta jci123 jci1 jci0; do
#   ../Rcmd ../run.R $outdir/$fname fci $mode 0 $iters
# done
# # icp
# for mode in sc mc; do
#   ../Rcmd ../run.R $outdir/$fname icp $mode 0 $iters
# done
# # analyze bootstraps
# ../Rcmd ../analyze.R $outdir/$fname 1
# # fisher
# ../Rcmd ../run.R $outdir/$fname fisher mode
# # asd
# for mode in obs pooled meta jci123 pikt jci123kt jci13 jci1 jci1nt jci12 jci12nt jci123-sc jci1-sc; do
#   ../Rcmd ../run.R $outdir/$fname asd $mode
# done

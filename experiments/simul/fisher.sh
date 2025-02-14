#!/bin/bash

genes=("Ahr" "Atf3" "Cebpb" "Ctcf" "E2f1" "E2f4" "Egr1" "Egr2" "Ets2" "Hif1a" "Irf1" "Irf2" "Irf4" "Junb" "maff" "Nfkb1" "Rel" "Rela" "Relb" "Runx1" "Spi1" "Stat1" "Stat2" "Stat3")

# Rscript wd.R
# Rscript ../run.R jci24/Ahr fisher 0

for gene in ${genes[@]}
do
  Rscript ../run.R jci24_2/$gene fisher 0
done

# Rscript ../run.R jci24/gene fisher 0

# touch test/cont-fisher-arel.csv

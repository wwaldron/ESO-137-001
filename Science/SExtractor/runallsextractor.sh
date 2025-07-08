#!/bin/bash
# Runs all the SExtractor Files

# Export Needed Directories
export CONF_DIR="/home/wwaldron/Research/Galaxies/ESO/ESO-137-001/Science/SExtractor/PhotometryRunFiles"
export IMG_DIR="/home/wwaldron/Research/Galaxies/ESO/ESO-137-001/Images/ProcessedImages/HST/Drizzled"

./sextractorcommandsF275W.sh
./sextractorcommandsF475W.sh
./sextractorcommandsF814W.sh
./sextractorcommandsF160W.sh

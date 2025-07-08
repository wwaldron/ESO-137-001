#!/bin/bash
#Commands run to run SExtractor for the 4 images using F475W as the detection
#image.

# SExtractor needs to be run in the directory where the measurement file is
# sitting
cd ../DrizzledImages/

# Run for F160W
sextractor ../CleanedImages/F475W_drc_chip_cleaned.fits[1],F160W_drz.fits[1] -c ../SExtractor/PhotometryRunFiles/F475W/ESO_dual_F475WxF160W.conf

# Move to directory where the rest of the files are sitting
cd ../CleanedImages/

# Run for remaining images
sextractor F475W_drc_chip_cleaned.fits[1],F275W_drc_cleaned.fits[1] -c ../SExtractor/PhotometryRunFiles/F475W/ESO_dual_F475WxF275W.conf
sextractor F475W_drc_chip_cleaned.fits[1],F475W_drc_chip_cleaned.fits[1] -c ../SExtractor/PhotometryRunFiles/F475W/ESO_dual_F475WxF475W.conf
sextractor F475W_drc_chip_cleaned.fits[1],F814W_drc_chip_cleaned.fits[1] -c ../SExtractor/PhotometryRunFiles/F475W/ESO_dual_F475WxF814W.conf

# Return to original directory
cd ../Programming/

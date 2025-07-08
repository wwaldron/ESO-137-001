#!/bin/bash
#Commands run to run SExtractor for the 4 images using F275W as the detection
#image.

# SExtractor needs to be run in the directory where the measurement file is
# sitting
cd ../DrizzledImages/

# Run for F160W
sextractor ../CleanedImages/F275W_drc_cleaned.fits[1],F160W_drz.fits[1] -c ../SExtractor/PhotometryRunFiles/F275W/ESO_dual_F275WxF160W.conf

# Move to directory where the rest of the files are sitting
cd ../CleanedImages/

# Run for remaining images
sextractor F275W_drc_cleaned.fits[1],F275W_drc_cleaned.fits[1] -c ../SExtractor/PhotometryRunFiles/F275W/ESO_dual_F275WxF275W.conf
sextractor F275W_drc_cleaned.fits[1],F475W_drc_chip_cleaned.fits[1] -c ../SExtractor/PhotometryRunFiles/F275W/ESO_dual_F275WxF475W.conf
sextractor F275W_drc_cleaned.fits[1],F814W_drc_chip_cleaned.fits[1] -c ../SExtractor/PhotometryRunFiles/F275W/ESO_dual_F275WxF814W.conf

# Return to original directory
cd ../Programming/

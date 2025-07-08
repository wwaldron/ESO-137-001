#!/bin/bash
#Commands run to run SExtractor for the 4 images using F814W as the detection
#image.

# Note that the calling file is runallsextractor.sh
# This file defines $CONF_DIR and $IMG_DIR, which are used in the commands below.

# SExtractor needs to be run in the directory where the measurement/analysis
# image is located
cd $IMG_DIR

# Run for All Images
sextractor ESO137-001-F814W_drc.fits[1],ESO137-001-F160W_drz.fits[1] -c $CONF_DIR/F814W/ESO_dual_F814WxF160W.conf
sextractor ESO137-001-F814W_drc.fits[1],ESO137-001-F275W_drc.fits[1] -c $CONF_DIR/F814W/ESO_dual_F814WxF275W.conf
sextractor ESO137-001-F814W_drc.fits[1],ESO137-001-F475W_drc.fits[1] -c $CONF_DIR/F814W/ESO_dual_F814WxF475W.conf
sextractor ESO137-001-F814W_drc.fits[1],ESO137-001-F814W_drc.fits[1] -c $CONF_DIR/F814W/ESO_dual_F814WxF814W.conf

# Return to original directory
cd -

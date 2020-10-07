#!/bin/bash

# This is being run in indir

# This is to check what to do with higher live time cases

fulld="/Users/iain/data/heasarc_nustar/ns_20190425/20511311001/"
id="nu20511311001"

# Run it the "new" way with just default filtering

nupipeline obsmode=SCIENCE_SC indir=$fulld steminputs=$id \
	outdir=event_cl_def entrystage=1 exitstage=2 pntra=OBJECT \
    pntdec=OBJECT hkevtexpr=NONE clobber=yes

# Run it the "new" way with specific filtering (more for low livetime)

nupipeline obsmode=SCIENCE_SC indir=$fulld steminputs=$id \
	outdir=event_cl_nws entrystage=1 exitstage=2 pntra=OBJECT \
    pntdec=OBJECT statusexpr="STATUS==b0000xxx00xxxx000" \
    hkevtexpr=NONE clobber=yes

# Run it the old way with specific filtering (more for low livetime)

nupipeline obsmode=SCIENCE_SC indir=$fulld steminputs=$id \
	outdir=event_cl_ods entrystage=1 exitstage=2 pntra=OBJECT \
    pntdec=OBJECT statusexpr="STATUS==b0000xx00xx0xx000" cleanflick=no \
    hkevtexpr=NONE clobber=yes


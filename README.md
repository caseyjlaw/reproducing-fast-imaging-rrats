# Reproducing Fast Imaging of RRATs

## Introduction

This repository contains a Jupyter notebook and data products to demonstrate the [`rtpipe`](http://github.com/caseyjlaw/rtpipe) fast imaging transient analysis package. It also shows how to reproduce analysis of radio interferometric data toward a "rotating radio transient" (RRAT) as seen by the [VLA](https://public.nrao.edu/telescopes/vla). These results were presented in the publications "Fast Imaging of RRATs" and ["The RRAT Trap"](https://ui.adsabs.harvard.edu/#abs/2012ApJ...760..124L/abstract).

Readers can use this repo to:

1. Run an example of the analysis presented in the paper as a [Jupyter](http://jupyter.org) notebook.
2. Visualize some basic properties of RRATs presented in the paper (using `rtpipe` and the cands*pkl file).
3. Reproduce the detections discussed in the paper (using `rtpipe`, downloaded data, and the *GN file).

## Prerequisites

1) For Basic candidate data exploration, there are no requirements. Just load the notebook in [binder](http://mybinder.org): [![Binder](http://mybinder.org/badge.svg)](http://mybinder.org:/repo/caseyjlaw/reproducing-fast-imaging-rrats).

2) To reproduce full analysis, you will need the following locally:

- [`rtpipe`](http://github.com/caseyjlaw/rtpipe) (and [anaconda](https://www.continuum.io/downloads) installer to get it)
- Jupyter
- this repo

## Getting Started with full analysis

1. Clone this repo.

2. Install [`rtpipe`](http://github.com/caseyjlaw/rtpipe) with the [anaconda](https://www.continuum.io/downloads) installer.

3. Install jupyter (e.g., `conda install jupyter`) and run `jupyter notebook` from this repo.

4. To run the transient search, you need to download 195 GB of raw visibility data:

  a. Visit https://archive.nrao.edu/archive/advquery.jsp.
  
  b. Type "12A-336_sb9667618_1b.56040.87127945602" into the field named "Archive File ID".
  
  c. Enter your email address in the email field and under "Choose dataset file format" click the button for "SDM-BDF dataset".
  
  d. Select the radio button for the observation listed at bottom (only one should be listed) and click "Get My Data".
  
  e. On the next page, select "Retrieve over internet" to begin the moving data to an FTP site.
  
  f. Follow the instructions emailed from NRAO to *actually* retrieve the data via FTP.

## Running notebooks

- `index.html` demonstrates a simple visualization of a `rtpipe` candidate file that detected pulses from the RRAT J0628+09. This is the notebook automatically loaded by binder: [![Binder](http://mybinder.org/badge.svg)](http://mybinder.org:/repo/caseyjlaw/reproducing-fast-imaging-rrats). This shows how the RRAT pulses were found and what features are extracted by the pipeline (e.g., location, SNR).

- `runsearch.ipynb` presents a deeper analysis. You can use it to reproduce transient search pipeline that generated the candidate file that identified the RRATs in the VLA data. If you have downloaded the raw visibility data into this repo, then this notebook will find it.

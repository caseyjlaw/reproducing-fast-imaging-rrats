FROM andrewosh/binder-base

MAINTAINER Casey Law <caseyjlaw@gmail.com>

USER root

RUN apt-get update
RUN apt-get install -y libfftw3-bin libfftw3-dev

RUN conda install -y numpy scipy jupyter bokeh cython matplotlib
RUN conda install -y -c pkgw pwkit casa-tools casa-python casa-data

RUN pip install rtpipe activegit

USER main

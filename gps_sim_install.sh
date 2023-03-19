#! /usr/bin/env bash

echo "http://pixiwell.com"

echo "Installing PIXIWELL_RF GPS_Sim"

sudo apt-get update -y --quiet
sudo DEBIAN_FRONTEND=noninteractive apt-get -y --quiet --no-install-recommends install \
	gcc \
    gnuradio \
    gr-osmosdr \
    hackrf \
    gqrx-sdr \
    libhackrf-dev \
    ;

# echo "git clone "
# git clone git@github.com:osqzss/gps-sdr-sim.git

echo "gcc gps_sim "
    
gcc gpssim.c -lm -fopenmp -o gps-sdr-sim



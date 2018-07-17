#!/usr/bin/gnuplot

reset

set terminal svg size 10000,10000 dynamic background rgb 'white'
set output 'polygons.svg'

set style line 1 lc rgb '#000000' lt 0 lw 0

unset key
set border 31 
unset tics

set tmargin 4
set bmargin 4
set rmargin 4
set lmargin 4

set format y ""
set format x ""
f(x) = 0
g(x) = 0

# Placement of the labels in the graphs

# multiplot
#set multiplot layout 4,4 rowsfirst

# OBJECT 1
#set object 1 polygon from \
#     0, 8 to \
#     9, 1 to \
#     9, 6 to \
#     3, 7

#plot f(x) with lines ls 1

#!/usr/bin/gnuplot

reset

set terminal svg size 100000,100000 dynamic
set output 'polygons.svg'

set style line 0.2 lc rgb '#000000' lt 0 lw 0

unset key
unset border
unset tics

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

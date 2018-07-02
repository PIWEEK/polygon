#!/usr/bin/gnuplot

reset

set terminal pngcairo size 10000,8500
set output 'polygons.png'

set style line 1 lc rgb '#000000' lt 1 lw 4

unset key

set xrange [-1:50]
set yrange [-1:400]
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

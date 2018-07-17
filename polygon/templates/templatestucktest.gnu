#!/usr/bin/gnuplot

reset

set terminal pngcairo size 1000,1000 
set output 'stuckpolygons.png'

set style line 1 lc rgb '#000000' lt 0 lw 0

unset key
set border 2 
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

set multiplot layout 5,5 rowsfirst
set xrange [0:10]
set yrange [0:10]


plot 'test.txt' every :::0::0 with linespoints pointtype 1 pointsize 0.5, "" every :::1::1  with points pointtype 1 pointsize 0.5


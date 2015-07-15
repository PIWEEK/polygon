#!/usr/bin/gnuplot

reset

# latex
#set terminal latex size 350,262
# png
set terminal pngcairo size 1024,840
set output 'polygon.png'
# svg
#set terminal svg size 350,262 fname 'Verdana, Helvetica, Arial, sans-serif' \
#fsize '10'
#set output 'loudspeaker.svg'

# color definitions
set style line 1 lc rgb '#000000' lt 1 lw 4

unset key
#unset border
#unset tics

set xrange [0:11]
set yrange [0:11]
#set size ratio -1

set macros
# Placement of the labels in the graphs
POS = "at graph 0.92,0.9 font ',8'"

# multiplot
set multiplot layout 4,4 rowsfirst

# OBJECT 1
set object 1 polygon from \
     0, 8 to \
     9, 1 to \
     9, 6 to \
     3, 7

set object 1 fc rgb '#000000'
set label 1 'a' @POS

set parametric
set trange [0:2]
f(t) = 0
g(t) = 0
plot f(t), g(t) with lines ls 1

# OBJECT 2
set object 1 polygon from \
     0, 8 to \
     9, 1 to \
     9, 6 to \
     3, 7

set object 1 fc rgb '#111111'
set label 1 'b' @POS

set parametric
set trange [0:2]
plot f(t), g(t) with lines ls 1

# OBJECT 3
set object 1 polygon from \
     2, 3 to \
     3, 2 to \
     4, 3 to \
     5, 3 to \
     5, 6 to \
     4, 4 to \
     2, 6 to \
     2, 3
set object 1 fc rgb '#111111'
set label 1 'c' @POS

set parametric
set trange [0:2]
plot f(t), g(t) with lines ls 1

# OBJECT 4
set object 1 polygon from \
     2, 3 to \
     3, 2 to \
     4, 3 to \
     4, 4 to \
     3, 5 to \
     2, 5 to \
     2, 3
set object 1 fc rgb '#111111'
set label 1 'd' @POS

set parametric
set trange [0:2]
plot f(t), g(t) with lines ls 1

# OBJECT 5
set object 1 polygon from \
     0, 0 to \
     4, 4 to \
     5, 3 to \
     5, 5 to \
     2, 5 to \
     0, 0
set object 1 fc rgb '#111111'
set label 1 'e' @POS

set parametric
set trange [0:2]
plot f(t), g(t) with lines ls 1

# OBJECT 6
set object 1 polygon from \
     1, 1 to \
     1, 3 to \
     3, 3 to \
     3, 1 to \
     1, 1
set object 1 fc rgb '#111111'
set label 1 'f' @POS

set parametric
set trange [0:2]
plot f(t), g(t) with lines ls 1

# OBJECT 7
set object 1 polygon from \
     1, 3 to \
     3, 1 to \
     5, 1 to \
     5, 3 to \
     3, 5 to \
     1, 3
set object 1 fc rgb '#111111'
set label 1 'g' @POS

set parametric
set trange [0:2]
plot f(t), g(t) with lines ls 1

# OBJECT 8
set object 1 polygon from \
     1, 1 to \
     3, 1 to \
     4, 3 to \
     3, 5 to \
     1, 5 to \
     3, 3 to \
     1, 1
set object 1 fc rgb '#111111'
set label 1 'h' @POS

set parametric
set trange [0:2]
plot f(t), g(t) with lines ls 1

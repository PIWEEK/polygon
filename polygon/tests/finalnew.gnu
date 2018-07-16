#!/usr/bin/gnuplot

reset

set terminal svg size 10000,8000 dynamic
set output 'polygons.svg'

set style line 1 lc rgb '#000000' lt 1 lw 4

unset key
unset border
unset tics
set lmargin 1
set rmargin 1
set bmargin 1
set tmargin 1

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
set multiplot layout 20,20 rowsfirst

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 97 to 223, 175 to 205, 142 to 175, 62 to 142, 79 to 108, 62 to 83, 0 to 200, 0 to 223, 108 to 283, 83 to 283, 200 to 79, 142 to 97, 186 to 108, 223 to 175, 223 to 142, 205 to 186, 186 to 200, 283 to 83, 283 to 0, 200 to 62, 175 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 83, 0 to 200, 0 to 142, 205 to 79, 142 to 62, 175 to 108, 223 to 97, 186 to 175, 223 to 186, 186 to 205, 142 to 223, 108 to 283, 83 to 283, 200 to 223, 175 to 200, 283 to 83, 283 to 0, 200 to 97, 97 to 142, 79 to 62, 108 to 175, 62 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 108 to 108, 223 to 205, 142 to 186, 186 to 142, 205 to 175, 223 to 223, 175 to 175, 62 to 142, 79 to 108, 62 to 97, 97 to 97, 186 to 79, 142 to 83, 0 to 200, 0 to 223, 108 to 283, 83 to 283, 200 to 200, 283 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 142, 79 to 97, 97 to 175, 62 to 223, 108 to 205, 142 to 175, 223 to 79, 142 to 62, 175 to 97, 186 to 0, 200 to 108, 223 to 83, 283 to 142, 205 to 200, 283 to 283, 200 to 223, 175 to 283, 83 to 200, 0 to 108, 62 to 83, 0 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 175 to 175, 62 to 97, 186 to 142, 205 to 205, 142 to 223, 175 to 175, 223 to 186, 186 to 108, 223 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 223, 108 to 200, 0 to 142, 79 to 108, 62 to 83, 0 to 97, 97 to 62, 108 to 79, 142 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 97, 97 to 108, 223 to 62, 175 to 97, 186 to 79, 142 to 62, 108 to 0, 200 to 83, 283 to 142, 205 to 205, 142 to 175, 62 to 223, 108 to 223, 175 to 186, 186 to 175, 223 to 200, 283 to 283, 200 to 283, 83 to 200, 0 to 142, 79 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 175 to 175, 62 to 142, 79 to 108, 62 to 205, 142 to 97, 97 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 223, 108 to 283, 200 to 186, 186 to 142, 205 to 79, 142 to 108, 223 to 97, 186 to 175, 223 to 200, 283 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 83, 0 to 186, 186 to 223, 108 to 175, 62 to 205, 142 to 142, 79 to 200, 0 to 283, 83 to 223, 175 to 108, 223 to 283, 200 to 200, 283 to 175, 223 to 83, 283 to 97, 97 to 97, 186 to 142, 205 to 108, 62 to 79, 142 to 62, 108 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 79 to 108, 62 to 223, 108 to 142, 205 to 205, 142 to 223, 175 to 186, 186 to 108, 223 to 97, 97 to 79, 142 to 97, 186 to 62, 108 to 0, 200 to 62, 175 to 83, 283 to 175, 223 to 200, 283 to 283, 200 to 283, 83 to 175, 62 to 200, 0 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 97, 97 to 142, 79 to 223, 108 to 175, 62 to 108, 62 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 205, 142 to 283, 200 to 223, 175 to 186, 186 to 200, 283 to 83, 283 to 108, 223 to 0, 200 to 62, 175 to 97, 186 to 142, 205 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 62 to 223, 175 to 79, 142 to 97, 97 to 205, 142 to 142, 79 to 62, 108 to 0, 200 to 142, 205 to 97, 186 to 62, 175 to 186, 186 to 108, 223 to 175, 223 to 83, 283 to 200, 283 to 283, 200 to 223, 108 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 175 to 175, 62 to 205, 142 to 108, 62 to 97, 97 to 62, 108 to 83, 0 to 142, 79 to 200, 0 to 223, 108 to 283, 83 to 283, 200 to 108, 223 to 175, 223 to 200, 283 to 83, 283 to 62, 175 to 0, 200 to 79, 142 to 97, 186 to 142, 205 to 186, 186 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 142, 79 to 186, 186 to 205, 142 to 175, 223 to 223, 108 to 175, 62 to 108, 62 to 97, 97 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 223, 175 to 200, 283 to 97, 186 to 108, 223 to 83, 283 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 83, 0 to 200, 0 to 175, 62 to 79, 142 to 283, 83 to 108, 223 to 175, 223 to 142, 205 to 186, 186 to 223, 175 to 283, 200 to 200, 283 to 83, 283 to 97, 186 to 62, 175 to 205, 142 to 223, 108 to 0, 200 to 97, 97 to 62, 108 to 142, 79 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 97, 97 to 223, 108 to 175, 62 to 142, 79 to 108, 62 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 205, 142 to 186, 186 to 223, 175 to 283, 200 to 200, 283 to 83, 283 to 108, 223 to 0, 200 to 62, 175 to 97, 186 to 142, 205 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 186 to 142, 79 to 186, 186 to 175, 62 to 97, 97 to 108, 62 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 205, 142 to 175, 223 to 223, 108 to 283, 83 to 283, 200 to 223, 175 to 200, 283 to 108, 223 to 83, 283 to 0, 200 to 142, 205 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.8
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 108 to 97, 186 to 175, 223 to 205, 142 to 223, 175 to 223, 108 to 175, 62 to 108, 62 to 142, 79 to 97, 97 to 186, 186 to 142, 205 to 79, 142 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 108, 223 to 83, 283 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 186 to 175, 223 to 205, 142 to 175, 62 to 108, 62 to 142, 79 to 97, 97 to 186, 186 to 142, 205 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 223, 108 to 223, 175 to 283, 200 to 200, 283 to 83, 283 to 108, 223 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.8
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 79 to 205, 142 to 186, 186 to 142, 205 to 175, 223 to 223, 108 to 108, 62 to 175, 62 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 223, 175 to 200, 283 to 108, 223 to 97, 186 to 97, 97 to 83, 283 to 0, 200 to 62, 175 to 79, 142 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 97 to 97, 186 to 142, 79 to 175, 223 to 186, 186 to 223, 175 to 205, 142 to 223, 108 to 108, 62 to 175, 62 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 142, 205 to 83, 283 to 108, 223 to 62, 175 to 0, 200 to 79, 142 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 108, 223 to 175, 223 to 223, 108 to 175, 62 to 205, 142 to 97, 97 to 186, 186 to 79, 142 to 62, 108 to 83, 0 to 108, 62 to 142, 79 to 200, 0 to 283, 83 to 223, 175 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 62, 175 to 97, 186 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 108, 223 to 142, 205 to 97, 186 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 108, 62 to 223, 108 to 205, 142 to 142, 79 to 186, 186 to 283, 200 to 223, 175 to 283, 83 to 200, 0 to 175, 62 to 83, 0 to 62, 108 to 97, 97 to 79, 142 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 175 to 0, 200 to 83, 283 to 97, 97 to 142, 79 to 223, 175 to 186, 186 to 142, 205 to 97, 186 to 108, 223 to 200, 283 to 175, 223 to 283, 200 to 283, 83 to 205, 142 to 175, 62 to 223, 108 to 200, 0 to 83, 0 to 108, 62 to 79, 142 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 175 to 142, 79 to 175, 62 to 97, 97 to 62, 108 to 83, 0 to 108, 62 to 200, 0 to 283, 83 to 223, 108 to 205, 142 to 283, 200 to 62, 175 to 97, 186 to 142, 205 to 175, 223 to 108, 223 to 200, 283 to 83, 283 to 0, 200 to 79, 142 to 186, 186 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 175, 62 to 223, 108 to 205, 142 to 223, 175 to 175, 223 to 142, 205 to 62, 175 to 97, 186 to 79, 142 to 0, 200 to 83, 283 to 108, 223 to 200, 283 to 283, 200 to 283, 83 to 200, 0 to 108, 62 to 142, 79 to 97, 97 to 62, 108 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 97 to 62, 108 to 79, 142 to 142, 79 to 186, 186 to 223, 175 to 108, 223 to 142, 205 to 97, 186 to 62, 175 to 0, 200 to 83, 283 to 175, 223 to 200, 283 to 283, 200 to 205, 142 to 175, 62 to 223, 108 to 283, 83 to 200, 0 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 79, 142 to 205, 142 to 97, 97 to 142, 79 to 223, 108 to 83, 0 to 200, 0 to 175, 62 to 283, 83 to 186, 186 to 62, 175 to 108, 223 to 97, 186 to 142, 205 to 175, 223 to 223, 175 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 83, 0 to 186, 186 to 142, 205 to 79, 142 to 97, 97 to 62, 175 to 97, 186 to 175, 223 to 223, 108 to 175, 62 to 205, 142 to 142, 79 to 200, 0 to 283, 83 to 283, 200 to 223, 175 to 200, 283 to 83, 283 to 108, 223 to 0, 200 to 62, 108 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 186 to 108, 62 to 186, 186 to 205, 142 to 142, 79 to 223, 108 to 223, 175 to 175, 223 to 108, 223 to 142, 205 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 200, 0 to 175, 62 to 83, 0 to 62, 108 to 97, 97 to 79, 142 to 0, 83 to 0, 83 fillstyle transparent solid 0.8
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 83, 0 to 200, 0 to 62, 175 to 142, 205 to 205, 142 to 97, 186 to 142, 79 to 223, 108 to 175, 62 to 283, 83 to 283, 200 to 200, 283 to 175, 223 to 223, 175 to 186, 186 to 108, 223 to 83, 283 to 0, 200 to 79, 142 to 97, 97 to 62, 108 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 223 to 62, 108 to 142, 79 to 223, 175 to 205, 142 to 175, 62 to 108, 62 to 83, 0 to 200, 0 to 223, 108 to 283, 83 to 283, 200 to 186, 186 to 200, 283 to 175, 223 to 97, 97 to 79, 142 to 97, 186 to 142, 205 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 97 to 175, 223 to 62, 108 to 79, 142 to 0, 200 to 62, 175 to 108, 223 to 97, 186 to 142, 205 to 83, 283 to 200, 283 to 142, 79 to 205, 142 to 175, 62 to 223, 108 to 223, 175 to 186, 186 to 283, 200 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 108, 223 to 79, 142 to 97, 186 to 97, 97 to 62, 108 to 0, 200 to 62, 175 to 83, 283 to 223, 108 to 223, 175 to 205, 142 to 186, 186 to 175, 223 to 200, 283 to 283, 200 to 283, 83 to 200, 0 to 142, 205 to 175, 62 to 142, 79 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 205, 142 to 175, 223 to 223, 108 to 175, 62 to 142, 79 to 108, 62 to 97, 97 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 223, 175 to 283, 200 to 200, 283 to 83, 283 to 186, 186 to 108, 223 to 0, 200 to 62, 175 to 97, 186 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 205, 142 to 62, 175 to 186, 186 to 142, 205 to 97, 186 to 108, 223 to 175, 223 to 223, 108 to 175, 62 to 142, 79 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 223, 175 to 200, 283 to 83, 283 to 0, 200 to 79, 142 to 62, 108 to 97, 97 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 175, 62 to 97, 97 to 142, 79 to 79, 142 to 62, 108 to 108, 62 to 83, 0 to 200, 0 to 186, 186 to 223, 175 to 205, 142 to 223, 108 to 283, 83 to 283, 200 to 200, 283 to 142, 205 to 83, 283 to 0, 200 to 62, 175 to 108, 223 to 97, 186 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 79, 142 to 62, 108 to 142, 205 to 97, 186 to 108, 223 to 223, 175 to 205, 142 to 142, 79 to 223, 108 to 108, 62 to 186, 186 to 97, 97 to 83, 0 to 175, 62 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 175, 223 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 186, 186 to 97, 97 to 79, 142 to 62, 108 to 175, 62 to 223, 108 to 142, 79 to 205, 142 to 223, 175 to 175, 223 to 108, 223 to 97, 186 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 200, 0 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 0, 200 to 108, 223 to 83, 283 to 200, 283 to 186, 186 to 175, 223 to 97, 186 to 142, 205 to 175, 62 to 223, 108 to 205, 142 to 223, 175 to 283, 200 to 283, 83 to 200, 0 to 79, 142 to 142, 79 to 62, 175 to 97, 97 to 62, 108 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 97, 97 to 142, 79 to 223, 108 to 142, 205 to 186, 186 to 205, 142 to 223, 175 to 175, 223 to 108, 223 to 97, 186 to 62, 175 to 79, 142 to 62, 108 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 175, 62 to 200, 0 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 79, 142 to 142, 205 to 223, 175 to 205, 142 to 142, 79 to 97, 97 to 108, 62 to 62, 108 to 83, 0 to 223, 108 to 175, 62 to 200, 0 to 283, 83 to 283, 200 to 175, 223 to 108, 223 to 200, 283 to 83, 283 to 0, 200 to 97, 186 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 205, 142 to 79, 142 to 62, 108 to 0, 200 to 62, 175 to 83, 283 to 108, 223 to 97, 186 to 175, 223 to 142, 205 to 186, 186 to 223, 175 to 200, 283 to 283, 200 to 142, 79 to 175, 62 to 223, 108 to 283, 83 to 200, 0 to 97, 97 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 97, 186 to 79, 142 to 108, 223 to 175, 223 to 142, 205 to 223, 175 to 175, 62 to 97, 97 to 142, 79 to 205, 142 to 62, 108 to 108, 62 to 83, 0 to 200, 0 to 283, 83 to 223, 108 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 205, 142 to 223, 108 to 175, 223 to 62, 175 to 97, 186 to 79, 142 to 142, 205 to 186, 186 to 62, 108 to 0, 200 to 108, 223 to 83, 283 to 200, 283 to 283, 200 to 223, 175 to 283, 83 to 97, 97 to 142, 79 to 175, 62 to 108, 62 to 200, 0 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 79, 142 to 205, 142 to 142, 79 to 97, 97 to 108, 62 to 62, 108 to 83, 0 to 223, 108 to 175, 62 to 200, 0 to 283, 83 to 283, 200 to 223, 175 to 186, 186 to 200, 283 to 142, 205 to 83, 283 to 0, 200 to 108, 223 to 97, 186 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 79 to 108, 223 to 175, 62 to 108, 62 to 83, 0 to 200, 0 to 142, 205 to 223, 175 to 186, 186 to 205, 142 to 223, 108 to 283, 83 to 283, 200 to 200, 283 to 175, 223 to 83, 283 to 62, 175 to 79, 142 to 97, 186 to 97, 97 to 0, 200 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 79, 142 to 223, 108 to 62, 108 to 97, 97 to 142, 79 to 175, 62 to 108, 62 to 83, 0 to 200, 0 to 283, 83 to 97, 186 to 205, 142 to 108, 223 to 142, 205 to 175, 223 to 186, 186 to 223, 175 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 223 to 223, 175 to 108, 62 to 97, 97 to 186, 186 to 79, 142 to 142, 205 to 97, 186 to 62, 108 to 83, 0 to 175, 62 to 142, 79 to 223, 108 to 200, 0 to 283, 83 to 205, 142 to 283, 200 to 175, 223 to 200, 283 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 79, 142 to 175, 223 to 223, 175 to 186, 186 to 62, 108 to 205, 142 to 175, 62 to 108, 62 to 142, 79 to 97, 97 to 83, 0 to 200, 0 to 283, 83 to 223, 108 to 283, 200 to 200, 283 to 108, 223 to 83, 283 to 0, 200 to 62, 175 to 142, 205 to 97, 186 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 223 to 223, 175 to 186, 186 to 223, 108 to 108, 62 to 79, 142 to 97, 97 to 142, 79 to 205, 142 to 142, 205 to 97, 186 to 62, 108 to 83, 0 to 200, 0 to 175, 62 to 283, 83 to 283, 200 to 175, 223 to 200, 283 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 175 to 62, 108 to 97, 97 to 223, 108 to 175, 62 to 142, 79 to 108, 62 to 83, 0 to 200, 0 to 283, 83 to 205, 142 to 283, 200 to 62, 175 to 97, 186 to 108, 223 to 142, 205 to 175, 223 to 200, 283 to 83, 283 to 0, 200 to 79, 142 to 186, 186 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 79 to 223, 175 to 223, 108 to 205, 142 to 175, 62 to 108, 62 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 97, 186 to 108, 223 to 142, 205 to 175, 223 to 200, 283 to 83, 283 to 62, 175 to 79, 142 to 0, 200 to 62, 108 to 186, 186 to 97, 97 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 97, 186 to 175, 223 to 62, 175 to 79, 142 to 0, 200 to 108, 223 to 83, 283 to 200, 283 to 283, 200 to 142, 205 to 223, 175 to 62, 108 to 175, 62 to 223, 108 to 142, 79 to 97, 97 to 205, 142 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 108, 62 to 223, 175 to 186, 186 to 175, 223 to 108, 223 to 97, 186 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 223, 108 to 205, 142 to 142, 79 to 283, 83 to 175, 62 to 200, 0 to 83, 0 to 97, 97 to 62, 108 to 79, 142 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 142, 205 to 79, 142 to 108, 223 to 97, 186 to 175, 223 to 205, 142 to 97, 97 to 175, 62 to 62, 108 to 108, 62 to 83, 0 to 200, 0 to 283, 83 to 223, 108 to 142, 79 to 283, 200 to 223, 175 to 200, 283 to 83, 283 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 175 to 175, 223 to 0, 200 to 83, 283 to 108, 223 to 200, 283 to 108, 62 to 175, 62 to 205, 142 to 223, 175 to 142, 79 to 186, 186 to 283, 200 to 223, 108 to 283, 83 to 200, 0 to 83, 0 to 142, 205 to 79, 142 to 97, 97 to 62, 108 to 97, 186 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 205, 142 to 79, 142 to 97, 186 to 142, 205 to 223, 175 to 175, 223 to 62, 175 to 62, 108 to 0, 200 to 108, 223 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 186, 186 to 223, 108 to 200, 0 to 83, 0 to 108, 62 to 175, 62 to 142, 79 to 97, 97 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 79 to 97, 186 to 142, 205 to 175, 223 to 223, 175 to 186, 186 to 175, 62 to 108, 62 to 83, 0 to 200, 0 to 223, 108 to 205, 142 to 283, 83 to 283, 200 to 200, 283 to 108, 223 to 62, 175 to 83, 283 to 0, 200 to 79, 142 to 62, 108 to 97, 97 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 97 to 142, 79 to 108, 223 to 223, 175 to 205, 142 to 186, 186 to 142, 205 to 223, 108 to 175, 62 to 108, 62 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 175, 223 to 83, 283 to 97, 186 to 79, 142 to 62, 108 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 79, 142 to 62, 175 to 175, 62 to 223, 175 to 142, 205 to 108, 223 to 97, 186 to 186, 186 to 205, 142 to 0, 200 to 83, 283 to 200, 283 to 175, 223 to 283, 200 to 223, 108 to 283, 83 to 200, 0 to 83, 0 to 142, 79 to 108, 62 to 97, 97 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 0, 200 to 142, 205 to 97, 186 to 62, 175 to 175, 62 to 186, 186 to 175, 223 to 108, 223 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 223, 108 to 223, 175 to 205, 142 to 200, 0 to 142, 79 to 97, 97 to 79, 142 to 62, 108 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 205, 142 to 142, 205 to 62, 108 to 62, 175 to 79, 142 to 97, 186 to 0, 200 to 83, 283 to 108, 223 to 186, 186 to 223, 108 to 223, 175 to 175, 223 to 200, 283 to 283, 200 to 283, 83 to 175, 62 to 142, 79 to 108, 62 to 200, 0 to 83, 0 to 97, 97 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 175 to 175, 62 to 142, 79 to 108, 62 to 97, 97 to 205, 142 to 62, 108 to 83, 0 to 200, 0 to 223, 108 to 283, 83 to 283, 200 to 97, 186 to 186, 186 to 62, 175 to 108, 223 to 142, 205 to 175, 223 to 200, 283 to 83, 283 to 0, 200 to 79, 142 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 186 to 223, 175 to 175, 223 to 186, 186 to 142, 205 to 62, 175 to 108, 223 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 108, 62 to 175, 62 to 142, 79 to 223, 108 to 283, 83 to 200, 0 to 83, 0 to 62, 108 to 97, 97 to 205, 142 to 79, 142 to 0, 83 to 0, 83 fillstyle transparent solid 0.8
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 97 to 108, 223 to 175, 62 to 142, 79 to 108, 62 to 83, 0 to 200, 0 to 175, 223 to 223, 175 to 186, 186 to 205, 142 to 223, 108 to 283, 83 to 283, 200 to 200, 283 to 142, 205 to 83, 283 to 62, 175 to 97, 186 to 79, 142 to 62, 108 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 97 to 108, 62 to 186, 186 to 175, 223 to 108, 223 to 62, 175 to 79, 142 to 97, 186 to 142, 205 to 62, 108 to 0, 200 to 83, 283 to 200, 283 to 175, 62 to 223, 108 to 205, 142 to 223, 175 to 283, 200 to 283, 83 to 200, 0 to 142, 79 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 97 to 142, 79 to 108, 223 to 205, 142 to 223, 108 to 175, 62 to 108, 62 to 83, 0 to 200, 0 to 283, 83 to 142, 205 to 186, 186 to 175, 223 to 223, 175 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 97, 186 to 62, 175 to 79, 142 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 62 to 62, 108 to 223, 175 to 175, 223 to 142, 205 to 186, 186 to 79, 142 to 97, 186 to 62, 175 to 0, 200 to 83, 283 to 108, 223 to 200, 283 to 283, 200 to 223, 108 to 205, 142 to 97, 97 to 142, 79 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 186 to 175, 62 to 142, 79 to 97, 97 to 108, 62 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 175, 223 to 223, 175 to 186, 186 to 205, 142 to 223, 108 to 283, 83 to 283, 200 to 200, 283 to 108, 223 to 83, 283 to 0, 200 to 142, 205 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 205, 142 to 223, 108 to 142, 79 to 108, 62 to 186, 186 to 79, 142 to 62, 108 to 97, 97 to 83, 0 to 200, 0 to 175, 62 to 283, 83 to 283, 200 to 223, 175 to 200, 283 to 142, 205 to 108, 223 to 97, 186 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 186 to 186, 186 to 223, 175 to 142, 79 to 223, 108 to 108, 62 to 97, 97 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 175, 62 to 283, 83 to 205, 142 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 108, 223 to 175, 223 to 142, 205 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.8
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 62, 108 to 175, 62 to 205, 142 to 142, 79 to 97, 97 to 223, 175 to 108, 223 to 62, 175 to 97, 186 to 142, 205 to 79, 142 to 0, 200 to 83, 283 to 200, 283 to 175, 223 to 283, 200 to 283, 83 to 223, 108 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 223 to 223, 175 to 223, 108 to 108, 62 to 79, 142 to 97, 97 to 142, 79 to 205, 142 to 186, 186 to 142, 205 to 97, 186 to 62, 108 to 83, 0 to 200, 0 to 175, 62 to 283, 83 to 283, 200 to 200, 283 to 175, 223 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 62, 108 to 97, 97 to 205, 142 to 175, 223 to 108, 223 to 62, 175 to 142, 205 to 97, 186 to 79, 142 to 0, 200 to 83, 283 to 200, 283 to 223, 175 to 283, 200 to 175, 62 to 223, 108 to 283, 83 to 200, 0 to 142, 79 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 205, 142 to 175, 62 to 108, 62 to 97, 97 to 142, 79 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 223, 108 to 175, 223 to 223, 175 to 283, 83 to 283, 200 to 200, 283 to 83, 283 to 186, 186 to 108, 223 to 97, 186 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 0, 200 to 79, 142 to 97, 186 to 175, 62 to 142, 205 to 205, 142 to 175, 223 to 186, 186 to 108, 223 to 62, 175 to 83, 283 to 200, 283 to 223, 175 to 283, 200 to 223, 108 to 283, 83 to 200, 0 to 83, 0 to 142, 79 to 97, 97 to 62, 108 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 97, 97 to 223, 175 to 142, 79 to 175, 62 to 108, 62 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 223, 108 to 205, 142 to 283, 200 to 186, 186 to 175, 223 to 200, 283 to 108, 223 to 97, 186 to 83, 283 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 108 to 142, 205 to 186, 186 to 205, 142 to 223, 175 to 175, 223 to 62, 175 to 97, 186 to 79, 142 to 97, 97 to 62, 108 to 0, 200 to 108, 223 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 142, 79 to 108, 62 to 175, 62 to 200, 0 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 205, 142 to 223, 108 to 186, 186 to 142, 205 to 97, 186 to 175, 223 to 108, 223 to 79, 142 to 62, 175 to 62, 108 to 0, 200 to 83, 283 to 200, 283 to 223, 175 to 283, 200 to 283, 83 to 97, 97 to 142, 79 to 175, 62 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 175 to 223, 108 to 108, 62 to 142, 79 to 97, 97 to 205, 142 to 62, 108 to 83, 0 to 175, 62 to 200, 0 to 283, 83 to 283, 200 to 97, 186 to 186, 186 to 62, 175 to 142, 205 to 108, 223 to 175, 223 to 200, 283 to 83, 283 to 0, 200 to 79, 142 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 83, 0 to 200, 0 to 108, 62 to 108, 223 to 223, 175 to 186, 186 to 223, 108 to 205, 142 to 142, 205 to 142, 79 to 175, 62 to 283, 83 to 283, 200 to 175, 223 to 200, 283 to 83, 283 to 97, 186 to 79, 142 to 62, 175 to 0, 200 to 62, 108 to 97, 97 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 223, 108 to 205, 142 to 108, 62 to 186, 186 to 97, 97 to 79, 142 to 62, 108 to 83, 0 to 142, 79 to 175, 62 to 200, 0 to 283, 83 to 283, 200 to 223, 175 to 200, 283 to 83, 283 to 108, 223 to 142, 205 to 97, 186 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 97 to 223, 175 to 223, 108 to 205, 142 to 142, 79 to 108, 62 to 83, 0 to 175, 62 to 200, 0 to 283, 83 to 283, 200 to 62, 108 to 186, 186 to 97, 186 to 142, 205 to 62, 175 to 175, 223 to 108, 223 to 200, 283 to 83, 283 to 0, 200 to 79, 142 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 83, 0 to 223, 175 to 205, 142 to 175, 62 to 223, 108 to 200, 0 to 283, 83 to 283, 200 to 97, 186 to 79, 142 to 108, 223 to 142, 205 to 175, 223 to 200, 283 to 83, 283 to 0, 200 to 62, 108 to 62, 175 to 97, 97 to 186, 186 to 142, 79 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 108 to 186, 186 to 205, 142 to 223, 175 to 142, 205 to 175, 223 to 108, 223 to 97, 186 to 79, 142 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 175, 62 to 223, 108 to 97, 97 to 142, 79 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 108 to 97, 97 to 142, 205 to 175, 223 to 62, 175 to 97, 186 to 79, 142 to 62, 108 to 0, 200 to 108, 223 to 83, 283 to 200, 283 to 186, 186 to 283, 200 to 223, 175 to 205, 142 to 283, 83 to 200, 0 to 175, 62 to 83, 0 to 142, 79 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 108 to 97, 186 to 142, 205 to 108, 223 to 62, 175 to 0, 200 to 83, 283 to 223, 108 to 223, 175 to 205, 142 to 186, 186 to 175, 223 to 200, 283 to 283, 200 to 283, 83 to 200, 0 to 97, 97 to 175, 62 to 142, 79 to 79, 142 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 186 to 108, 223 to 205, 142 to 175, 62 to 79, 142 to 97, 97 to 62, 108 to 108, 62 to 142, 79 to 83, 0 to 200, 0 to 223, 175 to 223, 108 to 283, 83 to 283, 200 to 186, 186 to 175, 223 to 200, 283 to 142, 205 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.8
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 79, 142 to 175, 223 to 142, 79 to 108, 62 to 97, 97 to 62, 108 to 83, 0 to 200, 0 to 223, 108 to 175, 62 to 205, 142 to 186, 186 to 223, 175 to 283, 83 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 62, 175 to 108, 223 to 142, 205 to 97, 186 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 108, 223 to 175, 223 to 223, 108 to 97, 97 to 205, 142 to 62, 108 to 142, 79 to 108, 62 to 175, 62 to 83, 0 to 200, 0 to 283, 83 to 223, 175 to 283, 200 to 200, 283 to 83, 283 to 62, 175 to 97, 186 to 142, 205 to 79, 142 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 108 to 108, 223 to 223, 175 to 142, 79 to 205, 142 to 223, 108 to 108, 62 to 186, 186 to 97, 97 to 142, 205 to 97, 186 to 79, 142 to 83, 0 to 175, 62 to 200, 0 to 283, 83 to 283, 200 to 175, 223 to 200, 283 to 83, 283 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 79, 142 to 142, 205 to 108, 62 to 223, 108 to 186, 186 to 205, 142 to 142, 79 to 175, 223 to 108, 223 to 97, 186 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 223, 175 to 283, 200 to 283, 83 to 175, 62 to 200, 0 to 83, 0 to 97, 97 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 175 to 97, 97 to 79, 142 to 142, 79 to 62, 108 to 108, 62 to 223, 108 to 175, 223 to 142, 205 to 108, 223 to 97, 186 to 186, 186 to 205, 142 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 223, 175 to 283, 83 to 175, 62 to 200, 0 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 0, 200 to 108, 62 to 205, 142 to 186, 186 to 142, 205 to 223, 175 to 108, 223 to 79, 142 to 97, 186 to 97, 97 to 62, 175 to 83, 283 to 175, 223 to 200, 283 to 283, 200 to 142, 79 to 223, 108 to 175, 62 to 283, 83 to 200, 0 to 83, 0 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 186 to 175, 223 to 108, 223 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 223, 175 to 97, 97 to 283, 200 to 142, 79 to 205, 142 to 108, 62 to 175, 62 to 223, 108 to 283, 83 to 200, 0 to 83, 0 to 62, 108 to 186, 186 to 142, 205 to 79, 142 to 0, 83 to 0, 83 fillstyle transparent solid 0.8
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 175 to 62, 108 to 205, 142 to 223, 108 to 142, 79 to 175, 62 to 97, 97 to 108, 62 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 142, 205 to 186, 186 to 79, 142 to 108, 223 to 97, 186 to 175, 223 to 200, 283 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 142, 79 to 97, 97 to 62, 108 to 175, 62 to 223, 175 to 205, 142 to 175, 223 to 79, 142 to 62, 175 to 97, 186 to 0, 200 to 108, 223 to 142, 205 to 83, 283 to 200, 283 to 283, 200 to 223, 108 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 62, 108 to 62, 175 to 205, 142 to 175, 223 to 186, 186 to 142, 205 to 97, 186 to 108, 223 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 223, 108 to 283, 83 to 200, 0 to 223, 175 to 175, 62 to 79, 142 to 97, 97 to 142, 79 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 79, 142 to 62, 108 to 223, 175 to 205, 142 to 142, 79 to 223, 108 to 175, 62 to 108, 62 to 97, 97 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 186, 186 to 200, 283 to 83, 283 to 142, 205 to 97, 186 to 108, 223 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 83, 0 to 175, 223 to 186, 186 to 175, 62 to 142, 79 to 200, 0 to 223, 108 to 205, 142 to 283, 83 to 283, 200 to 223, 175 to 200, 283 to 97, 97 to 97, 186 to 142, 205 to 83, 283 to 0, 200 to 62, 108 to 62, 175 to 108, 223 to 79, 142 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 83, 0 to 200, 0 to 62, 175 to 97, 186 to 142, 79 to 175, 62 to 283, 83 to 142, 205 to 205, 142 to 223, 108 to 108, 223 to 186, 186 to 223, 175 to 175, 223 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 79, 142 to 62, 108 to 97, 97 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 223 to 108, 62 to 79, 142 to 97, 97 to 97, 186 to 62, 108 to 83, 0 to 175, 223 to 223, 175 to 223, 108 to 175, 62 to 205, 142 to 186, 186 to 142, 79 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 142, 205 to 83, 283 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 62, 108 to 205, 142 to 97, 186 to 175, 223 to 142, 205 to 186, 186 to 223, 108 to 142, 79 to 97, 97 to 175, 62 to 83, 0 to 200, 0 to 283, 83 to 223, 175 to 283, 200 to 200, 283 to 62, 175 to 108, 223 to 83, 283 to 0, 200 to 79, 142 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 175, 223 to 108, 223 to 62, 175 to 97, 186 to 142, 205 to 79, 142 to 0, 200 to 83, 283 to 200, 283 to 205, 142 to 62, 108 to 97, 97 to 223, 108 to 223, 175 to 283, 200 to 283, 83 to 175, 62 to 200, 0 to 142, 79 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 175 to 79, 142 to 142, 205 to 108, 223 to 223, 175 to 223, 108 to 175, 62 to 205, 142 to 186, 186 to 142, 79 to 108, 62 to 97, 97 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 175, 223 to 200, 283 to 83, 283 to 97, 186 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 223 to 97, 186 to 97, 97 to 142, 79 to 223, 175 to 205, 142 to 175, 62 to 108, 62 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 223, 108 to 283, 200 to 200, 283 to 175, 223 to 186, 186 to 142, 205 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 97, 97 to 79, 142 to 62, 108 to 108, 62 to 186, 186 to 142, 79 to 223, 108 to 83, 0 to 175, 62 to 200, 0 to 283, 83 to 223, 175 to 283, 200 to 200, 283 to 205, 142 to 175, 223 to 83, 283 to 0, 200 to 108, 223 to 97, 186 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 108, 223 to 175, 223 to 186, 186 to 205, 142 to 223, 108 to 108, 62 to 97, 97 to 142, 79 to 79, 142 to 62, 108 to 83, 0 to 175, 62 to 200, 0 to 283, 83 to 223, 175 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 97, 186 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 79, 142 to 175, 223 to 205, 142 to 175, 62 to 108, 62 to 142, 79 to 97, 97 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 223, 175 to 223, 108 to 200, 283 to 142, 205 to 97, 186 to 62, 175 to 108, 223 to 83, 283 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 175 to 97, 97 to 142, 79 to 223, 108 to 108, 62 to 62, 108 to 83, 0 to 175, 62 to 200, 0 to 283, 83 to 205, 142 to 283, 200 to 62, 175 to 108, 223 to 97, 186 to 142, 205 to 175, 223 to 200, 283 to 83, 283 to 0, 200 to 79, 142 to 186, 186 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 142, 205 to 97, 186 to 62, 175 to 79, 142 to 0, 200 to 83, 283 to 175, 223 to 200, 283 to 283, 200 to 108, 223 to 223, 175 to 142, 79 to 108, 62 to 223, 108 to 205, 142 to 283, 83 to 175, 62 to 200, 0 to 83, 0 to 97, 97 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 108, 223 to 142, 205 to 175, 223 to 142, 79 to 223, 175 to 83, 0 to 200, 0 to 175, 62 to 283, 83 to 223, 108 to 205, 142 to 283, 200 to 186, 186 to 200, 283 to 83, 283 to 0, 200 to 79, 142 to 62, 175 to 97, 186 to 97, 97 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 97 to 108, 223 to 186, 186 to 142, 205 to 108, 62 to 205, 142 to 175, 223 to 223, 175 to 223, 108 to 142, 79 to 83, 0 to 175, 62 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 97, 186 to 62, 175 to 79, 142 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 79, 142 to 142, 205 to 175, 223 to 223, 175 to 205, 142 to 108, 62 to 97, 97 to 62, 108 to 83, 0 to 142, 79 to 175, 62 to 223, 108 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 83, 283 to 108, 223 to 97, 186 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 223 to 142, 79 to 205, 142 to 175, 62 to 108, 62 to 97, 97 to 97, 186 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 223, 175 to 223, 108 to 283, 83 to 283, 200 to 200, 283 to 175, 223 to 186, 186 to 142, 205 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 108 to 108, 223 to 79, 142 to 97, 186 to 97, 97 to 62, 108 to 62, 175 to 0, 200 to 83, 283 to 142, 205 to 186, 186 to 175, 223 to 223, 175 to 200, 283 to 283, 200 to 205, 142 to 283, 83 to 142, 79 to 175, 62 to 108, 62 to 200, 0 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 79, 142 to 62, 175 to 223, 108 to 175, 223 to 186, 186 to 97, 186 to 205, 142 to 0, 200 to 142, 205 to 108, 223 to 83, 283 to 200, 283 to 283, 200 to 223, 175 to 283, 83 to 175, 62 to 200, 0 to 83, 0 to 142, 79 to 97, 97 to 108, 62 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 108 to 97, 97 to 223, 108 to 175, 223 to 142, 205 to 97, 186 to 108, 223 to 62, 175 to 186, 186 to 205, 142 to 79, 142 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 223, 175 to 283, 83 to 200, 0 to 175, 62 to 142, 79 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 186, 186 to 223, 175 to 175, 62 to 205, 142 to 142, 79 to 83, 0 to 200, 0 to 283, 83 to 223, 108 to 283, 200 to 108, 223 to 175, 223 to 200, 283 to 83, 283 to 97, 186 to 79, 142 to 142, 205 to 97, 97 to 62, 175 to 62, 108 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 142, 205 to 97, 186 to 62, 175 to 0, 200 to 83, 283 to 108, 223 to 200, 283 to 175, 62 to 223, 108 to 205, 142 to 223, 175 to 283, 200 to 283, 83 to 200, 0 to 108, 62 to 83, 0 to 97, 97 to 142, 79 to 186, 186 to 62, 108 to 79, 142 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 97, 97 to 223, 175 to 175, 223 to 186, 186 to 108, 223 to 97, 186 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 142, 79 to 205, 142 to 108, 62 to 175, 62 to 223, 108 to 283, 83 to 200, 0 to 83, 0 to 79, 142 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 223, 108 to 108, 62 to 142, 79 to 205, 142 to 97, 97 to 186, 186 to 79, 142 to 62, 108 to 83, 0 to 175, 62 to 200, 0 to 283, 83 to 283, 200 to 223, 175 to 200, 283 to 142, 205 to 108, 223 to 97, 186 to 83, 283 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 205, 142 to 223, 108 to 142, 79 to 175, 62 to 108, 62 to 97, 97 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 186, 186 to 223, 175 to 283, 200 to 108, 223 to 175, 223 to 200, 283 to 83, 283 to 97, 186 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 62 to 62, 175 to 142, 79 to 97, 97 to 62, 108 to 79, 142 to 0, 200 to 223, 175 to 175, 223 to 186, 186 to 142, 205 to 108, 223 to 83, 283 to 200, 283 to 283, 200 to 205, 142 to 283, 83 to 97, 186 to 223, 108 to 200, 0 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 108 to 97, 97 to 108, 223 to 175, 223 to 223, 175 to 142, 79 to 223, 108 to 175, 62 to 108, 62 to 186, 186 to 142, 205 to 83, 0 to 200, 0 to 283, 83 to 205, 142 to 283, 200 to 200, 283 to 83, 283 to 62, 175 to 97, 186 to 79, 142 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 79 to 142, 205 to 223, 108 to 223, 175 to 175, 223 to 205, 142 to 186, 186 to 108, 223 to 97, 97 to 79, 142 to 62, 175 to 62, 108 to 0, 200 to 97, 186 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 175, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 108, 223 to 142, 205 to 97, 186 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 223, 108 to 223, 175 to 283, 200 to 283, 83 to 97, 97 to 205, 142 to 186, 186 to 79, 142 to 108, 62 to 142, 79 to 175, 62 to 200, 0 to 83, 0 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 83, 0 to 186, 186 to 223, 175 to 205, 142 to 175, 62 to 142, 79 to 200, 0 to 283, 83 to 223, 108 to 283, 200 to 62, 175 to 108, 223 to 97, 186 to 142, 205 to 175, 223 to 200, 283 to 83, 283 to 0, 200 to 79, 142 to 97, 97 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 108 to 175, 223 to 62, 175 to 79, 142 to 97, 186 to 142, 205 to 186, 186 to 205, 142 to 97, 97 to 62, 108 to 0, 200 to 108, 223 to 83, 283 to 200, 283 to 223, 175 to 283, 200 to 283, 83 to 142, 79 to 175, 62 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 205, 142 to 175, 223 to 62, 175 to 79, 142 to 97, 186 to 142, 205 to 186, 186 to 62, 108 to 0, 200 to 108, 223 to 83, 283 to 200, 283 to 223, 175 to 223, 108 to 283, 200 to 283, 83 to 175, 62 to 200, 0 to 108, 62 to 142, 79 to 97, 97 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 175 to 142, 205 to 62, 175 to 97, 186 to 186, 186 to 79, 142 to 0, 200 to 175, 223 to 108, 223 to 83, 283 to 200, 283 to 283, 200 to 142, 79 to 223, 108 to 175, 62 to 283, 83 to 200, 0 to 83, 0 to 97, 97 to 108, 62 to 205, 142 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 0, 200 to 62, 108 to 175, 62 to 223, 108 to 186, 186 to 223, 175 to 175, 223 to 97, 186 to 142, 205 to 79, 142 to 205, 142 to 142, 79 to 97, 97 to 62, 175 to 108, 223 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 142, 79 to 223, 108 to 186, 186 to 97, 186 to 62, 175 to 205, 142 to 97, 97 to 62, 108 to 79, 142 to 0, 200 to 142, 205 to 108, 223 to 223, 175 to 175, 223 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 175, 62 to 200, 0 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 223, 175 to 205, 142 to 223, 108 to 97, 97 to 186, 186 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 108, 62 to 142, 79 to 175, 62 to 283, 83 to 283, 200 to 200, 283 to 142, 205 to 108, 223 to 83, 283 to 0, 200 to 62, 175 to 97, 186 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 79, 142 to 108, 223 to 97, 186 to 142, 205 to 223, 175 to 175, 62 to 108, 62 to 142, 79 to 97, 97 to 205, 142 to 62, 108 to 83, 0 to 200, 0 to 223, 108 to 283, 83 to 283, 200 to 200, 283 to 175, 223 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 186 to 108, 223 to 175, 62 to 97, 97 to 142, 79 to 79, 142 to 108, 62 to 62, 108 to 83, 0 to 200, 0 to 142, 205 to 186, 186 to 223, 175 to 205, 142 to 223, 108 to 283, 83 to 283, 200 to 175, 223 to 200, 283 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.8
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 108, 223 to 186, 186 to 79, 142 to 62, 108 to 142, 79 to 223, 108 to 175, 62 to 108, 62 to 83, 0 to 200, 0 to 283, 83 to 205, 142 to 283, 200 to 97, 97 to 223, 175 to 175, 223 to 200, 283 to 83, 283 to 0, 200 to 62, 175 to 97, 186 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 62 to 62, 175 to 97, 97 to 79, 142 to 142, 79 to 62, 108 to 0, 200 to 142, 205 to 186, 186 to 175, 223 to 108, 223 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 223, 175 to 97, 186 to 205, 142 to 223, 108 to 200, 0 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 62 to 175, 223 to 108, 223 to 97, 186 to 97, 97 to 142, 205 to 142, 79 to 62, 108 to 0, 200 to 62, 175 to 79, 142 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 223, 175 to 186, 186 to 223, 108 to 205, 142 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 223 to 108, 62 to 97, 97 to 97, 186 to 62, 108 to 79, 142 to 83, 0 to 142, 79 to 223, 175 to 205, 142 to 223, 108 to 175, 62 to 200, 0 to 283, 83 to 283, 200 to 186, 186 to 200, 283 to 175, 223 to 142, 205 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 108, 62 to 205, 142 to 175, 223 to 79, 142 to 142, 205 to 97, 186 to 62, 175 to 0, 200 to 83, 283 to 108, 223 to 200, 283 to 283, 200 to 283, 83 to 223, 108 to 223, 175 to 175, 62 to 142, 79 to 200, 0 to 83, 0 to 97, 97 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 79, 142 to 223, 108 to 142, 79 to 108, 62 to 97, 97 to 62, 108 to 83, 0 to 200, 0 to 175, 62 to 283, 83 to 205, 142 to 175, 223 to 223, 175 to 283, 200 to 200, 283 to 83, 283 to 186, 186 to 108, 223 to 97, 186 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 175, 62 to 142, 205 to 205, 142 to 223, 175 to 175, 223 to 186, 186 to 108, 223 to 79, 142 to 97, 97 to 97, 186 to 142, 79 to 62, 108 to 0, 200 to 62, 175 to 83, 283 to 200, 283 to 283, 200 to 223, 108 to 283, 83 to 200, 0 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 79, 142 to 97, 97 to 62, 108 to 175, 62 to 223, 108 to 186, 186 to 205, 142 to 142, 79 to 175, 223 to 108, 223 to 97, 186 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 223, 175 to 283, 200 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 108 to 79, 142 to 97, 97 to 97, 186 to 205, 142 to 175, 62 to 223, 175 to 186, 186 to 175, 223 to 142, 205 to 108, 223 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 223, 108 to 283, 83 to 200, 0 to 83, 0 to 142, 79 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 175 to 108, 223 to 175, 223 to 97, 186 to 175, 62 to 108, 62 to 97, 97 to 142, 79 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 205, 142 to 223, 108 to 142, 205 to 186, 186 to 223, 175 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 205, 142 to 79, 142 to 62, 175 to 62, 108 to 0, 200 to 186, 186 to 97, 186 to 223, 175 to 142, 205 to 108, 223 to 175, 223 to 83, 283 to 200, 283 to 283, 200 to 108, 62 to 142, 79 to 223, 108 to 175, 62 to 283, 83 to 200, 0 to 83, 0 to 97, 97 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 175 to 142, 79 to 205, 142 to 175, 62 to 97, 97 to 108, 62 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 223, 108 to 283, 200 to 186, 186 to 175, 223 to 200, 283 to 108, 223 to 83, 283 to 62, 175 to 97, 186 to 142, 205 to 79, 142 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 97 to 205, 142 to 186, 186 to 62, 108 to 175, 223 to 142, 205 to 108, 223 to 62, 175 to 97, 186 to 79, 142 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 223, 108 to 283, 83 to 200, 0 to 223, 175 to 175, 62 to 142, 79 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 223, 108 to 175, 62 to 97, 97 to 142, 79 to 205, 142 to 186, 186 to 79, 142 to 108, 62 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 223, 175 to 283, 200 to 200, 283 to 83, 283 to 142, 205 to 97, 186 to 108, 223 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 97 to 142, 79 to 205, 142 to 223, 175 to 175, 223 to 97, 186 to 142, 205 to 186, 186 to 62, 108 to 79, 142 to 62, 175 to 0, 200 to 83, 283 to 108, 223 to 200, 283 to 283, 200 to 223, 108 to 283, 83 to 108, 62 to 175, 62 to 200, 0 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 205, 142 to 186, 186 to 108, 223 to 223, 175 to 175, 62 to 79, 142 to 142, 79 to 97, 97 to 108, 62 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 223, 108 to 283, 200 to 200, 283 to 175, 223 to 83, 283 to 0, 200 to 97, 186 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 0, 200 to 97, 97 to 142, 205 to 108, 62 to 186, 186 to 175, 62 to 223, 108 to 205, 142 to 223, 175 to 175, 223 to 108, 223 to 97, 186 to 79, 142 to 62, 175 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 200, 0 to 142, 79 to 83, 0 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 108 to 97, 186 to 79, 142 to 175, 62 to 142, 79 to 97, 97 to 83, 0 to 108, 62 to 200, 0 to 175, 223 to 223, 175 to 186, 186 to 205, 142 to 223, 108 to 283, 83 to 283, 200 to 200, 283 to 108, 223 to 142, 205 to 62, 175 to 83, 283 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 205, 142 to 62, 108 to 79, 142 to 175, 223 to 186, 186 to 223, 108 to 175, 62 to 108, 62 to 142, 79 to 97, 97 to 83, 0 to 200, 0 to 283, 83 to 223, 175 to 283, 200 to 200, 283 to 108, 223 to 83, 283 to 0, 200 to 62, 175 to 97, 186 to 142, 205 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 108 to 142, 79 to 175, 223 to 97, 97 to 0, 200 to 97, 186 to 62, 175 to 79, 142 to 142, 205 to 108, 223 to 83, 283 to 200, 283 to 205, 142 to 186, 186 to 175, 62 to 223, 175 to 223, 108 to 283, 200 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 79, 142 to 97, 186 to 186, 186 to 142, 79 to 97, 97 to 175, 62 to 205, 142 to 175, 223 to 108, 223 to 142, 205 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 223, 108 to 223, 175 to 283, 200 to 283, 83 to 200, 0 to 108, 62 to 83, 0 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 223, 175 to 142, 79 to 108, 62 to 186, 186 to 79, 142 to 62, 108 to 97, 97 to 83, 0 to 205, 142 to 175, 62 to 223, 108 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 108, 223 to 142, 205 to 97, 186 to 62, 175 to 83, 283 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 186, 186 to 223, 175 to 175, 62 to 205, 142 to 79, 142 to 142, 79 to 97, 97 to 62, 108 to 83, 0 to 108, 62 to 200, 0 to 283, 83 to 223, 108 to 283, 200 to 200, 283 to 83, 283 to 142, 205 to 108, 223 to 97, 186 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 175 to 175, 62 to 223, 175 to 205, 142 to 175, 223 to 108, 223 to 186, 186 to 142, 205 to 97, 186 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 223, 108 to 200, 0 to 97, 97 to 142, 79 to 79, 142 to 108, 62 to 62, 108 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 97 to 79, 142 to 205, 142 to 62, 175 to 108, 223 to 175, 223 to 97, 186 to 142, 205 to 186, 186 to 223, 108 to 142, 79 to 175, 62 to 108, 62 to 83, 0 to 200, 0 to 283, 83 to 223, 175 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 186, 186 to 142, 205 to 97, 97 to 62, 175 to 108, 223 to 79, 142 to 97, 186 to 175, 223 to 223, 175 to 142, 79 to 223, 108 to 175, 62 to 83, 0 to 200, 0 to 283, 83 to 205, 142 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 83, 0 to 175, 223 to 175, 62 to 142, 79 to 200, 0 to 283, 83 to 283, 200 to 223, 108 to 223, 175 to 205, 142 to 186, 186 to 200, 283 to 97, 97 to 108, 62 to 79, 142 to 62, 175 to 108, 223 to 97, 186 to 142, 205 to 83, 283 to 0, 200 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 83, 0 to 62, 175 to 142, 79 to 97, 186 to 175, 223 to 142, 205 to 205, 142 to 223, 175 to 223, 108 to 175, 62 to 97, 97 to 79, 142 to 108, 62 to 200, 0 to 283, 83 to 283, 200 to 186, 186 to 200, 283 to 83, 283 to 108, 223 to 0, 200 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 142, 79 to 186, 186 to 175, 62 to 97, 97 to 108, 62 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 223, 175 to 223, 108 to 283, 83 to 283, 200 to 200, 283 to 205, 142 to 175, 223 to 83, 283 to 0, 200 to 62, 175 to 108, 223 to 97, 186 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 223 to 223, 108 to 108, 62 to 97, 97 to 142, 79 to 79, 142 to 97, 186 to 62, 108 to 83, 0 to 175, 62 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 175, 223 to 223, 175 to 205, 142 to 142, 205 to 186, 186 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 175 to 142, 205 to 205, 142 to 175, 223 to 223, 108 to 97, 97 to 108, 62 to 79, 142 to 97, 186 to 62, 108 to 83, 0 to 200, 0 to 175, 62 to 142, 79 to 283, 83 to 283, 200 to 223, 175 to 200, 283 to 83, 283 to 186, 186 to 108, 223 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 175 to 142, 79 to 175, 62 to 223, 108 to 186, 186 to 175, 223 to 108, 223 to 97, 186 to 142, 205 to 205, 142 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 223, 175 to 283, 83 to 200, 0 to 83, 0 to 62, 108 to 108, 62 to 97, 97 to 79, 142 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 79 to 97, 97 to 97, 186 to 62, 175 to 108, 223 to 205, 142 to 186, 186 to 142, 205 to 223, 175 to 223, 108 to 175, 62 to 108, 62 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 175, 223 to 83, 283 to 0, 200 to 79, 142 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 108, 62 to 175, 62 to 223, 175 to 186, 186 to 205, 142 to 142, 79 to 175, 223 to 108, 223 to 97, 186 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 223, 108 to 200, 0 to 83, 0 to 97, 97 to 62, 108 to 79, 142 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 79 to 108, 62 to 223, 108 to 175, 62 to 83, 0 to 200, 0 to 283, 83 to 97, 186 to 79, 142 to 97, 97 to 62, 175 to 142, 205 to 186, 186 to 175, 223 to 223, 175 to 205, 142 to 283, 200 to 200, 283 to 83, 283 to 108, 223 to 0, 200 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 223, 108 to 205, 142 to 186, 186 to 223, 175 to 175, 223 to 108, 223 to 97, 186 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 175, 62 to 79, 142 to 62, 108 to 97, 97 to 142, 79 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 175, 62 to 108, 62 to 142, 79 to 97, 97 to 62, 108 to 83, 0 to 200, 0 to 223, 175 to 223, 108 to 283, 83 to 283, 200 to 200, 283 to 205, 142 to 175, 223 to 108, 223 to 142, 205 to 97, 186 to 79, 142 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 97, 97 to 142, 79 to 186, 186 to 223, 175 to 175, 223 to 97, 186 to 108, 223 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 205, 142 to 223, 108 to 283, 83 to 108, 62 to 175, 62 to 200, 0 to 83, 0 to 79, 142 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 83, 0 to 108, 223 to 186, 186 to 175, 223 to 223, 108 to 175, 62 to 205, 142 to 142, 79 to 142, 205 to 97, 97 to 108, 62 to 200, 0 to 283, 83 to 223, 175 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 62, 175 to 97, 186 to 79, 142 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 223 to 175, 223 to 223, 108 to 142, 79 to 108, 62 to 79, 142 to 97, 97 to 205, 142 to 186, 186 to 142, 205 to 97, 186 to 62, 108 to 83, 0 to 200, 0 to 175, 62 to 283, 83 to 283, 200 to 223, 175 to 200, 283 to 83, 283 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 79 to 62, 175 to 108, 223 to 97, 186 to 186, 186 to 205, 142 to 223, 175 to 223, 108 to 175, 62 to 108, 62 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 142, 205 to 175, 223 to 200, 283 to 83, 283 to 0, 200 to 79, 142 to 97, 97 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 175, 62 to 83, 0 to 200, 0 to 205, 142 to 97, 186 to 79, 142 to 142, 79 to 97, 97 to 62, 175 to 175, 223 to 223, 175 to 142, 205 to 186, 186 to 223, 108 to 283, 83 to 283, 200 to 200, 283 to 83, 283 to 108, 223 to 0, 200 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 97, 97 to 142, 79 to 108, 62 to 79, 142 to 62, 108 to 83, 0 to 175, 62 to 200, 0 to 205, 142 to 223, 108 to 283, 83 to 283, 200 to 223, 175 to 186, 186 to 200, 283 to 83, 283 to 0, 200 to 62, 175 to 108, 223 to 97, 186 to 142, 205 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 83, 0 to 79, 142 to 142, 205 to 223, 175 to 186, 186 to 223, 108 to 205, 142 to 97, 97 to 108, 62 to 200, 0 to 175, 62 to 142, 79 to 283, 83 to 283, 200 to 175, 223 to 108, 223 to 200, 283 to 83, 283 to 62, 175 to 97, 186 to 62, 108 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 108, 223 to 175, 223 to 175, 62 to 108, 62 to 97, 97 to 142, 79 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 223, 108 to 223, 175 to 205, 142 to 186, 186 to 200, 283 to 83, 283 to 97, 186 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 175, 62 to 223, 175 to 175, 223 to 142, 205 to 97, 186 to 62, 175 to 186, 186 to 79, 142 to 97, 97 to 205, 142 to 142, 79 to 62, 108 to 0, 200 to 83, 283 to 108, 223 to 200, 283 to 283, 200 to 283, 83 to 223, 108 to 200, 0 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 62 to 97, 97 to 142, 205 to 205, 142 to 142, 79 to 223, 108 to 223, 175 to 186, 186 to 175, 223 to 97, 186 to 79, 142 to 62, 108 to 0, 200 to 83, 283 to 62, 175 to 108, 223 to 200, 283 to 283, 200 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 223, 175 to 223, 108 to 175, 62 to 142, 79 to 108, 62 to 205, 142 to 62, 108 to 97, 97 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 142, 205 to 175, 223 to 108, 223 to 200, 283 to 83, 283 to 62, 175 to 97, 186 to 79, 142 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 108 to 108, 223 to 79, 142 to 97, 186 to 97, 97 to 62, 108 to 0, 200 to 62, 175 to 83, 283 to 200, 283 to 186, 186 to 175, 223 to 142, 205 to 205, 142 to 223, 175 to 283, 200 to 283, 83 to 175, 62 to 142, 79 to 200, 0 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 142, 79 to 175, 62 to 205, 142 to 175, 223 to 108, 223 to 79, 142 to 97, 186 to 142, 205 to 186, 186 to 97, 97 to 62, 108 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 223, 108 to 223, 175 to 283, 200 to 283, 83 to 200, 0 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 175 to 223, 108 to 142, 79 to 97, 97 to 205, 142 to 62, 108 to 175, 62 to 108, 62 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 108, 223 to 83, 283 to 0, 200 to 142, 205 to 97, 186 to 62, 175 to 79, 142 to 175, 223 to 186, 186 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 79 to 175, 62 to 223, 108 to 97, 97 to 79, 142 to 186, 186 to 205, 142 to 223, 175 to 175, 223 to 62, 175 to 142, 205 to 97, 186 to 62, 108 to 0, 200 to 108, 223 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 223, 108 to 175, 223 to 108, 223 to 97, 186 to 142, 205 to 79, 142 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 223, 175 to 283, 200 to 283, 83 to 108, 62 to 175, 62 to 200, 0 to 83, 0 to 97, 97 to 142, 79 to 205, 142 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 205, 142 to 97, 97 to 142, 79 to 175, 62 to 223, 175 to 62, 108 to 142, 205 to 79, 142 to 0, 200 to 108, 223 to 62, 175 to 97, 186 to 175, 223 to 83, 283 to 200, 283 to 186, 186 to 283, 200 to 223, 108 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 79, 142 to 186, 186 to 97, 97 to 223, 175 to 205, 142 to 223, 108 to 142, 79 to 175, 62 to 108, 62 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 142, 205 to 108, 223 to 83, 283 to 0, 200 to 97, 186 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 97 to 205, 142 to 142, 205 to 97, 186 to 175, 223 to 223, 175 to 186, 186 to 223, 108 to 175, 62 to 142, 79 to 108, 62 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 62, 175 to 108, 223 to 79, 142 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 175 to 186, 186 to 108, 62 to 223, 108 to 205, 142 to 142, 79 to 223, 175 to 175, 223 to 142, 205 to 108, 223 to 97, 186 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 175, 62 to 200, 0 to 83, 0 to 97, 97 to 79, 142 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 97 to 142, 205 to 175, 223 to 142, 79 to 175, 62 to 108, 62 to 83, 0 to 200, 0 to 283, 83 to 223, 108 to 283, 200 to 223, 175 to 205, 142 to 186, 186 to 200, 283 to 79, 142 to 97, 186 to 62, 175 to 108, 223 to 83, 283 to 0, 200 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 62, 175 to 108, 223 to 97, 186 to 142, 205 to 175, 223 to 223, 108 to 108, 62 to 142, 79 to 97, 97 to 205, 142 to 62, 108 to 83, 0 to 200, 0 to 175, 62 to 283, 83 to 223, 175 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 79, 142 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 175 to 175, 62 to 108, 62 to 142, 79 to 97, 97 to 205, 142 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 223, 108 to 283, 200 to 175, 223 to 142, 205 to 200, 283 to 62, 175 to 108, 223 to 83, 283 to 0, 200 to 79, 142 to 97, 186 to 186, 186 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 62 to 97, 186 to 186, 186 to 205, 142 to 223, 175 to 108, 223 to 142, 205 to 62, 175 to 79, 142 to 97, 97 to 142, 79 to 62, 108 to 0, 200 to 83, 283 to 200, 283 to 175, 223 to 283, 200 to 223, 108 to 283, 83 to 200, 0 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 175, 62 to 97, 97 to 142, 79 to 79, 142 to 62, 108 to 108, 62 to 83, 0 to 200, 0 to 186, 186 to 108, 223 to 175, 223 to 205, 142 to 223, 108 to 283, 83 to 283, 200 to 223, 175 to 200, 283 to 83, 283 to 97, 186 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 186 to 186, 186 to 142, 79 to 205, 142 to 175, 223 to 223, 108 to 175, 62 to 108, 62 to 97, 97 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 223, 175 to 283, 200 to 200, 283 to 83, 283 to 142, 205 to 108, 223 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.8
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 175 to 142, 79 to 97, 97 to 62, 108 to 175, 62 to 108, 62 to 83, 0 to 200, 0 to 283, 83 to 223, 108 to 205, 142 to 283, 200 to 97, 186 to 142, 205 to 108, 223 to 175, 223 to 200, 283 to 83, 283 to 62, 175 to 0, 200 to 79, 142 to 186, 186 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 108 to 142, 205 to 186, 186 to 205, 142 to 175, 223 to 223, 175 to 175, 62 to 142, 79 to 108, 62 to 97, 97 to 83, 0 to 200, 0 to 223, 108 to 283, 83 to 283, 200 to 200, 283 to 108, 223 to 83, 283 to 0, 200 to 97, 186 to 79, 142 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 223, 108 to 223, 175 to 142, 205 to 79, 142 to 97, 186 to 62, 175 to 0, 200 to 108, 223 to 83, 283 to 200, 283 to 175, 223 to 283, 200 to 283, 83 to 200, 0 to 205, 142 to 142, 79 to 97, 97 to 108, 62 to 175, 62 to 83, 0 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 79, 142 to 186, 186 to 108, 62 to 142, 79 to 205, 142 to 175, 62 to 223, 108 to 223, 175 to 108, 223 to 142, 205 to 97, 186 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 175, 223 to 283, 200 to 283, 83 to 200, 0 to 83, 0 to 97, 97 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 108 to 223, 175 to 175, 223 to 108, 223 to 97, 186 to 142, 205 to 186, 186 to 62, 175 to 79, 142 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 97, 97 to 205, 142 to 175, 62 to 223, 108 to 283, 83 to 200, 0 to 142, 79 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 223, 175 to 108, 223 to 62, 175 to 142, 205 to 97, 186 to 79, 142 to 0, 200 to 83, 283 to 175, 223 to 200, 283 to 283, 200 to 97, 97 to 175, 62 to 142, 79 to 223, 108 to 205, 142 to 283, 83 to 200, 0 to 62, 108 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 205, 142 to 62, 108 to 142, 205 to 97, 186 to 62, 175 to 108, 223 to 175, 223 to 223, 175 to 186, 186 to 223, 108 to 142, 79 to 108, 62 to 97, 97 to 83, 0 to 175, 62 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 79, 142 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 79 to 97, 97 to 205, 142 to 186, 186 to 97, 186 to 175, 223 to 108, 223 to 79, 142 to 62, 108 to 0, 200 to 62, 175 to 83, 283 to 200, 283 to 283, 200 to 142, 205 to 223, 175 to 175, 62 to 223, 108 to 283, 83 to 200, 0 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 205, 142 to 108, 223 to 97, 97 to 97, 186 to 79, 142 to 62, 175 to 62, 108 to 0, 200 to 83, 283 to 142, 205 to 223, 175 to 175, 223 to 200, 283 to 283, 200 to 283, 83 to 186, 186 to 223, 108 to 175, 62 to 200, 0 to 142, 79 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 205, 142 to 108, 223 to 223, 175 to 142, 205 to 186, 186 to 223, 108 to 175, 62 to 142, 79 to 108, 62 to 97, 97 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 175, 223 to 200, 283 to 83, 283 to 0, 200 to 62, 175 to 97, 186 to 79, 142 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 175 to 142, 79 to 79, 142 to 97, 97 to 175, 62 to 108, 62 to 62, 108 to 83, 0 to 200, 0 to 175, 223 to 223, 175 to 186, 186 to 205, 142 to 223, 108 to 283, 83 to 283, 200 to 200, 283 to 142, 205 to 97, 186 to 108, 223 to 83, 283 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 0, 200 to 223, 175 to 186, 186 to 175, 223 to 142, 205 to 108, 223 to 83, 283 to 200, 283 to 283, 200 to 205, 142 to 283, 83 to 97, 97 to 223, 108 to 79, 142 to 97, 186 to 62, 175 to 62, 108 to 142, 79 to 175, 62 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 223 to 223, 175 to 108, 62 to 79, 142 to 97, 97 to 186, 186 to 142, 205 to 97, 186 to 62, 108 to 83, 0 to 200, 0 to 142, 79 to 175, 62 to 223, 108 to 205, 142 to 283, 83 to 283, 200 to 175, 223 to 200, 283 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 205, 142 to 97, 97 to 142, 79 to 223, 108 to 223, 175 to 175, 223 to 186, 186 to 97, 186 to 62, 175 to 79, 142 to 62, 108 to 0, 200 to 108, 223 to 142, 205 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 175, 62 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 79 to 205, 142 to 108, 223 to 62, 175 to 97, 186 to 97, 97 to 79, 142 to 62, 108 to 0, 200 to 83, 283 to 142, 205 to 200, 283 to 283, 200 to 175, 223 to 223, 175 to 283, 83 to 186, 186 to 223, 108 to 200, 0 to 175, 62 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 186 to 108, 223 to 62, 175 to 0, 200 to 83, 283 to 142, 205 to 186, 186 to 79, 142 to 97, 97 to 142, 79 to 223, 108 to 223, 175 to 205, 142 to 175, 223 to 200, 283 to 283, 200 to 283, 83 to 175, 62 to 108, 62 to 200, 0 to 83, 0 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.8
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 83, 0 to 175, 62 to 97, 186 to 186, 186 to 223, 108 to 205, 142 to 200, 0 to 283, 83 to 223, 175 to 175, 223 to 283, 200 to 200, 283 to 83, 283 to 142, 205 to 108, 223 to 62, 175 to 0, 200 to 97, 97 to 79, 142 to 142, 79 to 62, 108 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 62, 108 to 223, 108 to 142, 79 to 108, 62 to 97, 97 to 83, 0 to 200, 0 to 175, 62 to 283, 83 to 223, 175 to 283, 200 to 200, 283 to 205, 142 to 175, 223 to 79, 142 to 97, 186 to 108, 223 to 142, 205 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 62, 175 to 108, 223 to 97, 186 to 142, 205 to 223, 175 to 108, 62 to 97, 97 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 175, 62 to 223, 108 to 142, 79 to 205, 142 to 283, 200 to 175, 223 to 200, 283 to 83, 283 to 0, 200 to 79, 142 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 175 to 186, 186 to 97, 97 to 175, 62 to 223, 108 to 205, 142 to 142, 79 to 223, 175 to 142, 205 to 97, 186 to 175, 223 to 108, 223 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 79, 142 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 79, 142 to 223, 175 to 223, 108 to 175, 62 to 142, 79 to 205, 142 to 97, 97 to 108, 62 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 142, 205 to 186, 186 to 97, 186 to 175, 223 to 200, 283 to 83, 283 to 108, 223 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 108 to 142, 205 to 79, 142 to 97, 186 to 175, 223 to 108, 223 to 62, 175 to 97, 97 to 62, 108 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 186, 186 to 223, 175 to 205, 142 to 283, 83 to 175, 62 to 200, 0 to 142, 79 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 97 to 205, 142 to 223, 108 to 175, 223 to 97, 186 to 108, 223 to 79, 142 to 142, 205 to 186, 186 to 62, 108 to 0, 200 to 62, 175 to 83, 283 to 200, 283 to 223, 175 to 283, 200 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 175, 62 to 142, 79 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 62 to 223, 175 to 186, 186 to 97, 186 to 79, 142 to 108, 223 to 62, 175 to 97, 97 to 205, 142 to 142, 79 to 62, 108 to 0, 200 to 83, 283 to 200, 283 to 175, 223 to 142, 205 to 283, 200 to 283, 83 to 223, 108 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 79, 142 to 142, 79 to 142, 205 to 108, 223 to 175, 223 to 186, 186 to 205, 142 to 223, 175 to 175, 62 to 108, 62 to 97, 97 to 62, 108 to 83, 0 to 200, 0 to 223, 108 to 283, 83 to 283, 200 to 200, 283 to 83, 283 to 97, 186 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 97, 97 to 62, 108 to 223, 175 to 175, 223 to 62, 175 to 97, 186 to 142, 205 to 186, 186 to 79, 142 to 0, 200 to 108, 223 to 83, 283 to 200, 283 to 283, 200 to 223, 108 to 205, 142 to 175, 62 to 283, 83 to 200, 0 to 142, 79 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 108 to 79, 142 to 175, 223 to 97, 97 to 83, 0 to 175, 62 to 200, 0 to 283, 83 to 108, 62 to 142, 79 to 205, 142 to 223, 175 to 223, 108 to 283, 200 to 186, 186 to 200, 283 to 108, 223 to 142, 205 to 97, 186 to 62, 175 to 83, 283 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 175 to 175, 223 to 62, 175 to 97, 186 to 142, 205 to 186, 186 to 79, 142 to 0, 200 to 83, 283 to 108, 223 to 200, 283 to 283, 200 to 108, 62 to 142, 79 to 223, 108 to 175, 62 to 283, 83 to 200, 0 to 83, 0 to 97, 97 to 205, 142 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 83, 0 to 186, 186 to 175, 223 to 223, 175 to 175, 62 to 205, 142 to 142, 79 to 200, 0 to 223, 108 to 283, 83 to 283, 200 to 200, 283 to 97, 97 to 108, 62 to 79, 142 to 62, 108 to 97, 186 to 142, 205 to 83, 283 to 0, 200 to 62, 175 to 108, 223 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 108, 223 to 186, 186 to 205, 142 to 175, 62 to 142, 79 to 79, 142 to 97, 97 to 108, 62 to 62, 108 to 83, 0 to 200, 0 to 223, 175 to 223, 108 to 283, 83 to 283, 200 to 200, 283 to 175, 223 to 83, 283 to 97, 186 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 108, 223 to 223, 175 to 97, 97 to 142, 79 to 62, 108 to 175, 62 to 108, 62 to 83, 0 to 200, 0 to 283, 83 to 223, 108 to 205, 142 to 283, 200 to 175, 223 to 200, 283 to 83, 283 to 62, 175 to 97, 186 to 142, 205 to 79, 142 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 62, 175 to 223, 175 to 223, 108 to 205, 142 to 142, 79 to 79, 142 to 97, 97 to 175, 62 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 186, 186 to 200, 283 to 175, 223 to 83, 283 to 108, 223 to 142, 205 to 97, 186 to 0, 200 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 62 to 142, 205 to 205, 142 to 223, 108 to 223, 175 to 186, 186 to 108, 223 to 79, 142 to 62, 175 to 97, 97 to 97, 186 to 142, 79 to 62, 108 to 0, 200 to 83, 283 to 175, 223 to 200, 283 to 283, 200 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 97, 97 to 108, 62 to 205, 142 to 175, 62 to 223, 108 to 223, 175 to 175, 223 to 62, 175 to 142, 205 to 97, 186 to 79, 142 to 0, 200 to 108, 223 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 200, 0 to 142, 79 to 83, 0 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 97, 186 to 62, 175 to 108, 223 to 142, 205 to 186, 186 to 223, 175 to 223, 108 to 205, 142 to 142, 79 to 175, 62 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 175, 223 to 83, 283 to 0, 200 to 62, 108 to 79, 142 to 97, 97 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 205, 142 to 223, 175 to 79, 142 to 175, 223 to 108, 223 to 142, 205 to 62, 175 to 97, 186 to 62, 108 to 0, 200 to 83, 283 to 200, 283 to 186, 186 to 283, 200 to 223, 108 to 175, 62 to 283, 83 to 200, 0 to 142, 79 to 108, 62 to 97, 97 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 186 to 205, 142 to 108, 62 to 142, 79 to 223, 108 to 223, 175 to 186, 186 to 175, 223 to 108, 223 to 142, 205 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 175, 62 to 200, 0 to 83, 0 to 97, 97 to 79, 142 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.8
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 175 to 79, 142 to 108, 223 to 108, 62 to 97, 186 to 97, 97 to 62, 108 to 83, 0 to 186, 186 to 223, 108 to 205, 142 to 142, 79 to 175, 62 to 200, 0 to 283, 83 to 223, 175 to 175, 223 to 283, 200 to 200, 283 to 142, 205 to 83, 283 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 223 to 186, 186 to 223, 108 to 108, 62 to 142, 79 to 97, 97 to 205, 142 to 142, 205 to 97, 186 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 175, 62 to 283, 83 to 175, 223 to 223, 175 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 223 to 223, 108 to 97, 186 to 142, 79 to 175, 62 to 108, 62 to 97, 97 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 223, 175 to 205, 142 to 142, 205 to 186, 186 to 175, 223 to 283, 200 to 200, 283 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 205, 142 to 97, 186 to 108, 223 to 223, 175 to 142, 205 to 186, 186 to 223, 108 to 108, 62 to 142, 79 to 97, 97 to 83, 0 to 200, 0 to 175, 62 to 283, 83 to 283, 200 to 175, 223 to 200, 283 to 83, 283 to 79, 142 to 62, 108 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 79, 142 to 223, 175 to 223, 108 to 175, 62 to 108, 62 to 97, 97 to 142, 79 to 205, 142 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 186, 186 to 200, 283 to 108, 223 to 175, 223 to 142, 205 to 97, 186 to 62, 175 to 83, 283 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 205, 142 to 108, 223 to 175, 223 to 142, 205 to 223, 175 to 186, 186 to 223, 108 to 175, 62 to 108, 62 to 142, 79 to 97, 97 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 83, 283 to 62, 175 to 97, 186 to 79, 142 to 62, 108 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 62 to 223, 175 to 97, 186 to 142, 205 to 175, 223 to 108, 223 to 62, 175 to 79, 142 to 97, 97 to 205, 142 to 142, 79 to 62, 108 to 0, 200 to 83, 283 to 200, 283 to 186, 186 to 283, 200 to 223, 108 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 62 to 108, 223 to 62, 175 to 97, 186 to 79, 142 to 97, 97 to 142, 79 to 62, 108 to 0, 200 to 83, 283 to 175, 223 to 142, 205 to 205, 142 to 186, 186 to 223, 108 to 200, 283 to 283, 200 to 223, 175 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 205, 142 to 223, 108 to 175, 62 to 142, 79 to 108, 62 to 97, 97 to 83, 0 to 200, 0 to 283, 83 to 142, 205 to 108, 223 to 175, 223 to 186, 186 to 223, 175 to 283, 200 to 200, 283 to 83, 283 to 97, 186 to 79, 142 to 62, 175 to 62, 108 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 108 to 186, 186 to 79, 142 to 175, 223 to 223, 108 to 108, 62 to 142, 79 to 205, 142 to 97, 97 to 83, 0 to 175, 62 to 200, 0 to 283, 83 to 283, 200 to 223, 175 to 200, 283 to 142, 205 to 108, 223 to 83, 283 to 0, 200 to 97, 186 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 108 to 62, 175 to 79, 142 to 97, 97 to 62, 108 to 0, 200 to 108, 223 to 97, 186 to 205, 142 to 223, 175 to 186, 186 to 175, 223 to 142, 205 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 142, 79 to 175, 62 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 108, 223 to 142, 205 to 97, 186 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 108, 62 to 223, 108 to 205, 142 to 142, 79 to 223, 175 to 186, 186 to 283, 200 to 283, 83 to 175, 62 to 200, 0 to 83, 0 to 97, 97 to 79, 142 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 108 to 142, 205 to 62, 175 to 97, 186 to 97, 97 to 62, 108 to 79, 142 to 0, 200 to 108, 223 to 175, 223 to 83, 283 to 200, 283 to 186, 186 to 205, 142 to 223, 175 to 283, 200 to 283, 83 to 175, 62 to 200, 0 to 83, 0 to 142, 79 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 175, 62 to 97, 97 to 142, 79 to 79, 142 to 108, 62 to 62, 108 to 83, 0 to 200, 0 to 205, 142 to 223, 108 to 283, 83 to 283, 200 to 223, 175 to 186, 186 to 200, 283 to 83, 283 to 108, 223 to 0, 200 to 142, 205 to 97, 186 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 97, 97 to 186, 186 to 79, 142 to 142, 205 to 223, 175 to 142, 79 to 205, 142 to 83, 0 to 175, 62 to 223, 108 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 175, 223 to 108, 223 to 83, 283 to 0, 200 to 62, 175 to 97, 186 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 79, 142 to 175, 223 to 223, 175 to 175, 62 to 97, 97 to 142, 79 to 205, 142 to 186, 186 to 62, 108 to 83, 0 to 108, 62 to 200, 0 to 283, 83 to 223, 108 to 283, 200 to 200, 283 to 108, 223 to 142, 205 to 97, 186 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 79, 142 to 223, 108 to 142, 79 to 97, 97 to 175, 62 to 108, 62 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 97, 186 to 186, 186 to 175, 223 to 205, 142 to 223, 175 to 283, 200 to 200, 283 to 142, 205 to 108, 223 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 79 to 108, 223 to 175, 223 to 142, 205 to 186, 186 to 205, 142 to 223, 108 to 108, 62 to 175, 62 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 223, 175 to 200, 283 to 83, 283 to 62, 175 to 97, 186 to 79, 142 to 0, 200 to 62, 108 to 97, 97 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 186 to 108, 62 to 223, 175 to 186, 186 to 142, 205 to 175, 223 to 62, 175 to 108, 223 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 223, 108 to 283, 83 to 200, 0 to 205, 142 to 142, 79 to 175, 62 to 83, 0 to 97, 97 to 79, 142 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 223, 175 to 175, 62 to 108, 62 to 97, 97 to 142, 79 to 205, 142 to 186, 186 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 223, 108 to 283, 83 to 283, 200 to 200, 283 to 108, 223 to 83, 283 to 0, 200 to 62, 175 to 97, 186 to 142, 205 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 62 to 223, 175 to 97, 97 to 205, 142 to 142, 79 to 62, 108 to 142, 205 to 186, 186 to 108, 223 to 62, 175 to 97, 186 to 79, 142 to 0, 200 to 83, 283 to 175, 223 to 200, 283 to 283, 200 to 223, 108 to 283, 83 to 200, 0 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 223, 175 to 223, 108 to 175, 62 to 205, 142 to 142, 79 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 62, 175 to 108, 223 to 97, 186 to 142, 205 to 175, 223 to 200, 283 to 83, 283 to 0, 200 to 62, 108 to 79, 142 to 186, 186 to 97, 97 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 186, 186 to 142, 205 to 79, 142 to 97, 97 to 62, 175 to 97, 186 to 108, 223 to 223, 175 to 223, 108 to 175, 62 to 205, 142 to 142, 79 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 175, 223 to 200, 283 to 83, 283 to 0, 200 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 97, 186 to 175, 223 to 175, 62 to 108, 62 to 142, 79 to 79, 142 to 97, 97 to 62, 108 to 83, 0 to 200, 0 to 223, 108 to 283, 83 to 205, 142 to 283, 200 to 223, 175 to 186, 186 to 200, 283 to 108, 223 to 62, 175 to 83, 283 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 97, 186 to 108, 223 to 223, 175 to 142, 205 to 186, 186 to 83, 0 to 175, 62 to 200, 0 to 223, 108 to 142, 79 to 205, 142 to 283, 83 to 283, 200 to 200, 283 to 175, 223 to 83, 283 to 62, 175 to 79, 142 to 0, 200 to 97, 97 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 175, 223 to 97, 186 to 108, 223 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 108, 62 to 223, 108 to 223, 175 to 205, 142 to 142, 79 to 186, 186 to 283, 200 to 283, 83 to 200, 0 to 175, 62 to 83, 0 to 97, 97 to 79, 142 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 175, 223 to 223, 175 to 175, 62 to 142, 79 to 205, 142 to 186, 186 to 83, 0 to 200, 0 to 223, 108 to 283, 83 to 283, 200 to 200, 283 to 83, 283 to 142, 205 to 97, 97 to 97, 186 to 79, 142 to 108, 223 to 62, 175 to 0, 200 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 97 to 62, 108 to 79, 142 to 62, 175 to 175, 62 to 223, 108 to 205, 142 to 175, 223 to 186, 186 to 108, 223 to 142, 205 to 97, 186 to 0, 200 to 83, 283 to 200, 283 to 223, 175 to 283, 200 to 283, 83 to 200, 0 to 142, 79 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 79 to 223, 108 to 175, 223 to 186, 186 to 205, 142 to 97, 186 to 108, 223 to 79, 142 to 62, 175 to 97, 97 to 62, 108 to 0, 200 to 83, 283 to 142, 205 to 200, 283 to 223, 175 to 283, 200 to 283, 83 to 200, 0 to 175, 62 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 175 to 186, 186 to 142, 79 to 97, 97 to 175, 62 to 223, 175 to 205, 142 to 175, 223 to 142, 205 to 97, 186 to 0, 200 to 83, 283 to 108, 223 to 200, 283 to 283, 200 to 283, 83 to 223, 108 to 200, 0 to 108, 62 to 79, 142 to 62, 108 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 142, 79 to 223, 108 to 205, 142 to 223, 175 to 108, 223 to 62, 175 to 142, 205 to 97, 186 to 79, 142 to 0, 200 to 83, 283 to 200, 283 to 175, 223 to 283, 200 to 283, 83 to 175, 62 to 97, 97 to 108, 62 to 200, 0 to 83, 0 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 175, 223 to 223, 108 to 142, 79 to 205, 142 to 186, 186 to 83, 0 to 175, 62 to 200, 0 to 283, 83 to 223, 175 to 283, 200 to 200, 283 to 79, 142 to 62, 175 to 97, 186 to 108, 223 to 83, 283 to 0, 200 to 62, 108 to 142, 205 to 97, 97 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 108 to 175, 223 to 186, 186 to 62, 175 to 79, 142 to 205, 142 to 97, 97 to 62, 108 to 0, 200 to 83, 283 to 97, 186 to 108, 223 to 142, 205 to 200, 283 to 223, 175 to 283, 200 to 283, 83 to 175, 62 to 200, 0 to 142, 79 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 175 to 142, 205 to 97, 186 to 108, 223 to 62, 175 to 186, 186 to 79, 142 to 0, 200 to 83, 283 to 175, 223 to 200, 283 to 283, 200 to 205, 142 to 223, 108 to 142, 79 to 283, 83 to 200, 0 to 108, 62 to 175, 62 to 97, 97 to 62, 108 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 108 to 175, 223 to 186, 186 to 142, 205 to 97, 186 to 205, 142 to 97, 97 to 62, 175 to 62, 108 to 0, 200 to 83, 283 to 79, 142 to 108, 223 to 200, 283 to 283, 200 to 223, 175 to 283, 83 to 175, 62 to 142, 79 to 200, 0 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 175 to 142, 205 to 142, 79 to 205, 142 to 175, 62 to 223, 108 to 175, 223 to 186, 186 to 108, 223 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 223, 175 to 283, 83 to 200, 0 to 108, 62 to 97, 97 to 83, 0 to 97, 186 to 79, 142 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 108 to 142, 205 to 205, 142 to 223, 175 to 223, 108 to 175, 62 to 108, 62 to 142, 79 to 97, 97 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 186, 186 to 200, 283 to 175, 223 to 108, 223 to 97, 186 to 62, 175 to 83, 283 to 0, 200 to 79, 142 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 79 to 142, 205 to 175, 62 to 223, 175 to 175, 223 to 205, 142 to 186, 186 to 108, 223 to 97, 186 to 79, 142 to 97, 97 to 62, 175 to 62, 108 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 223, 108 to 283, 83 to 200, 0 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 97 to 97, 186 to 175, 62 to 223, 108 to 223, 175 to 205, 142 to 175, 223 to 108, 223 to 186, 186 to 142, 205 to 62, 175 to 79, 142 to 62, 108 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 200, 0 to 142, 79 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 175 to 97, 186 to 108, 223 to 79, 142 to 0, 200 to 62, 175 to 83, 283 to 142, 205 to 200, 283 to 175, 223 to 186, 186 to 283, 200 to 205, 142 to 108, 62 to 142, 79 to 223, 108 to 283, 83 to 200, 0 to 175, 62 to 83, 0 to 97, 97 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 205, 142 to 97, 97 to 175, 62 to 142, 79 to 223, 108 to 223, 175 to 186, 186 to 142, 205 to 97, 186 to 108, 223 to 79, 142 to 62, 108 to 0, 200 to 62, 175 to 83, 283 to 200, 283 to 175, 223 to 283, 200 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 223 to 142, 79 to 175, 223 to 223, 175 to 223, 108 to 205, 142 to 186, 186 to 175, 62 to 108, 62 to 79, 142 to 97, 97 to 97, 186 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 142, 205 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 97, 97 to 97, 186 to 142, 205 to 108, 223 to 223, 175 to 205, 142 to 223, 108 to 175, 62 to 142, 79 to 186, 186 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 175, 223 to 200, 283 to 83, 283 to 62, 175 to 0, 200 to 79, 142 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 0, 200 to 205, 142 to 223, 175 to 175, 223 to 108, 223 to 142, 205 to 186, 186 to 97, 186 to 83, 283 to 200, 283 to 283, 200 to 142, 79 to 108, 62 to 175, 62 to 223, 108 to 283, 83 to 200, 0 to 83, 0 to 97, 97 to 62, 108 to 79, 142 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 108 to 108, 223 to 175, 62 to 108, 62 to 97, 97 to 142, 79 to 97, 186 to 79, 142 to 83, 0 to 200, 0 to 223, 108 to 142, 205 to 205, 142 to 283, 83 to 186, 186 to 175, 223 to 223, 175 to 283, 200 to 200, 283 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 223, 175 to 223, 108 to 175, 62 to 205, 142 to 142, 79 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 186, 186 to 175, 223 to 142, 205 to 97, 97 to 62, 108 to 79, 142 to 108, 223 to 97, 186 to 200, 283 to 83, 283 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 83, 0 to 108, 62 to 97, 186 to 62, 175 to 108, 223 to 186, 186 to 223, 108 to 205, 142 to 142, 205 to 142, 79 to 175, 62 to 200, 0 to 283, 83 to 283, 200 to 223, 175 to 175, 223 to 200, 283 to 83, 283 to 0, 200 to 79, 142 to 97, 97 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 175 to 223, 108 to 175, 223 to 142, 205 to 186, 186 to 205, 142 to 0, 200 to 83, 283 to 97, 186 to 108, 223 to 200, 283 to 223, 175 to 283, 200 to 283, 83 to 175, 62 to 200, 0 to 108, 62 to 142, 79 to 97, 97 to 83, 0 to 62, 108 to 79, 142 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 83, 0 to 142, 79 to 205, 142 to 97, 186 to 142, 205 to 175, 223 to 223, 175 to 186, 186 to 223, 108 to 175, 62 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 108, 223 to 83, 283 to 79, 142 to 62, 175 to 97, 97 to 108, 62 to 62, 108 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 108 to 186, 186 to 142, 205 to 223, 175 to 205, 142 to 175, 62 to 108, 62 to 142, 79 to 97, 97 to 83, 0 to 200, 0 to 283, 83 to 223, 108 to 283, 200 to 200, 283 to 175, 223 to 83, 283 to 108, 223 to 0, 200 to 97, 186 to 79, 142 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 79 to 175, 223 to 142, 205 to 108, 223 to 62, 175 to 97, 186 to 79, 142 to 97, 97 to 62, 108 to 0, 200 to 83, 283 to 200, 283 to 223, 175 to 186, 186 to 175, 62 to 223, 108 to 205, 142 to 283, 200 to 283, 83 to 200, 0 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 175 to 142, 79 to 108, 62 to 97, 97 to 62, 108 to 83, 0 to 223, 108 to 175, 62 to 200, 0 to 283, 83 to 205, 142 to 283, 200 to 97, 186 to 62, 175 to 142, 205 to 108, 223 to 175, 223 to 200, 283 to 83, 283 to 0, 200 to 79, 142 to 186, 186 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 0, 200 to 142, 205 to 97, 97 to 205, 142 to 108, 62 to 142, 79 to 223, 108 to 223, 175 to 175, 223 to 186, 186 to 108, 223 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 200, 0 to 175, 62 to 83, 0 to 97, 186 to 79, 142 to 62, 108 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 108, 223 to 97, 186 to 62, 175 to 0, 200 to 83, 283 to 175, 223 to 175, 62 to 223, 175 to 205, 142 to 186, 186 to 200, 283 to 283, 200 to 223, 108 to 283, 83 to 200, 0 to 108, 62 to 97, 97 to 142, 79 to 79, 142 to 62, 108 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 175 to 142, 205 to 205, 142 to 142, 79 to 175, 62 to 223, 108 to 223, 175 to 175, 223 to 186, 186 to 108, 223 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 200, 0 to 79, 142 to 97, 97 to 108, 62 to 83, 0 to 62, 108 to 97, 186 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 83, 0 to 175, 223 to 205, 142 to 175, 62 to 186, 186 to 142, 79 to 200, 0 to 223, 108 to 283, 83 to 283, 200 to 223, 175 to 200, 283 to 108, 223 to 83, 283 to 97, 186 to 79, 142 to 62, 175 to 97, 97 to 142, 205 to 108, 62 to 0, 200 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 79, 142 to 0, 200 to 223, 108 to 205, 142 to 97, 186 to 223, 175 to 108, 223 to 186, 186 to 142, 205 to 62, 175 to 83, 283 to 175, 223 to 200, 283 to 283, 200 to 283, 83 to 142, 79 to 108, 62 to 175, 62 to 200, 0 to 83, 0 to 97, 97 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 186 to 142, 205 to 108, 223 to 62, 175 to 0, 200 to 83, 283 to 175, 223 to 108, 62 to 175, 62 to 186, 186 to 142, 79 to 200, 283 to 205, 142 to 223, 108 to 223, 175 to 283, 200 to 283, 83 to 200, 0 to 83, 0 to 97, 97 to 62, 108 to 79, 142 to 0, 83 to 0, 83 fillstyle transparent solid 0.8
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 62 to 142, 79 to 186, 186 to 175, 223 to 79, 142 to 97, 186 to 142, 205 to 108, 223 to 62, 175 to 97, 97 to 62, 108 to 0, 200 to 83, 283 to 200, 283 to 223, 175 to 205, 142 to 283, 200 to 223, 108 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 175 to 79, 142 to 0, 200 to 108, 223 to 83, 283 to 142, 205 to 62, 175 to 97, 186 to 186, 186 to 175, 223 to 200, 283 to 283, 200 to 223, 108 to 205, 142 to 97, 97 to 62, 108 to 108, 62 to 175, 62 to 142, 79 to 283, 83 to 200, 0 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 0, 200 to 108, 223 to 62, 175 to 175, 223 to 83, 283 to 200, 283 to 108, 62 to 175, 62 to 205, 142 to 223, 108 to 223, 175 to 142, 79 to 186, 186 to 283, 200 to 283, 83 to 200, 0 to 83, 0 to 62, 108 to 97, 97 to 79, 142 to 142, 205 to 97, 186 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 79, 142 to 142, 79 to 205, 142 to 175, 62 to 97, 97 to 108, 62 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 223, 175 to 223, 108 to 186, 186 to 200, 283 to 142, 205 to 108, 223 to 83, 283 to 97, 186 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 205, 142 to 175, 223 to 142, 205 to 97, 186 to 108, 223 to 79, 142 to 186, 186 to 62, 108 to 0, 200 to 62, 175 to 83, 283 to 200, 283 to 283, 200 to 223, 108 to 223, 175 to 175, 62 to 283, 83 to 200, 0 to 108, 62 to 142, 79 to 97, 97 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 205, 142 to 186, 186 to 97, 186 to 108, 223 to 79, 142 to 62, 175 to 62, 108 to 0, 200 to 83, 283 to 200, 283 to 142, 205 to 223, 175 to 175, 223 to 283, 200 to 108, 62 to 175, 62 to 142, 79 to 223, 108 to 283, 83 to 200, 0 to 83, 0 to 97, 97 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 97, 186 to 142, 205 to 223, 175 to 142, 79 to 108, 62 to 97, 97 to 62, 108 to 83, 0 to 175, 62 to 205, 142 to 223, 108 to 200, 0 to 283, 83 to 283, 200 to 108, 223 to 175, 223 to 200, 283 to 83, 283 to 62, 175 to 0, 200 to 79, 142 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 83, 0 to 97, 97 to 79, 142 to 62, 175 to 175, 223 to 97, 186 to 142, 205 to 142, 79 to 223, 175 to 205, 142 to 223, 108 to 175, 62 to 108, 62 to 200, 0 to 283, 83 to 283, 200 to 186, 186 to 200, 283 to 108, 223 to 83, 283 to 0, 200 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 0, 200 to 62, 175 to 97, 97 to 186, 186 to 142, 205 to 97, 186 to 108, 223 to 79, 142 to 83, 283 to 175, 223 to 205, 142 to 175, 62 to 223, 108 to 200, 283 to 283, 200 to 223, 175 to 283, 83 to 200, 0 to 83, 0 to 142, 79 to 62, 108 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 108, 62 to 175, 62 to 205, 142 to 142, 79 to 223, 175 to 108, 223 to 142, 205 to 97, 186 to 79, 142 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 175, 223 to 283, 200 to 223, 108 to 283, 83 to 200, 0 to 83, 0 to 97, 97 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 79, 142 to 186, 186 to 205, 142 to 223, 108 to 142, 79 to 97, 97 to 62, 108 to 108, 62 to 83, 0 to 175, 62 to 200, 0 to 283, 83 to 223, 175 to 283, 200 to 200, 283 to 83, 283 to 142, 205 to 108, 223 to 97, 186 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 108 to 97, 186 to 175, 223 to 223, 108 to 108, 62 to 142, 79 to 205, 142 to 186, 186 to 142, 205 to 97, 97 to 79, 142 to 83, 0 to 200, 0 to 175, 62 to 283, 83 to 223, 175 to 283, 200 to 200, 283 to 83, 283 to 108, 223 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 175 to 205, 142 to 186, 186 to 175, 223 to 142, 205 to 97, 186 to 108, 223 to 0, 200 to 83, 283 to 200, 283 to 223, 175 to 175, 62 to 283, 200 to 283, 83 to 223, 108 to 200, 0 to 142, 79 to 97, 97 to 108, 62 to 83, 0 to 62, 108 to 79, 142 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 205, 142 to 175, 62 to 108, 62 to 142, 79 to 97, 97 to 83, 0 to 200, 0 to 283, 83 to 223, 175 to 223, 108 to 186, 186 to 283, 200 to 175, 223 to 108, 223 to 200, 283 to 83, 283 to 62, 175 to 79, 142 to 97, 186 to 142, 205 to 62, 108 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 62 to 223, 175 to 108, 223 to 97, 186 to 79, 142 to 62, 175 to 97, 97 to 142, 205 to 186, 186 to 205, 142 to 142, 79 to 62, 108 to 0, 200 to 83, 283 to 175, 223 to 200, 283 to 283, 200 to 223, 108 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 79 to 97, 186 to 97, 97 to 79, 142 to 108, 223 to 175, 223 to 205, 142 to 186, 186 to 142, 205 to 223, 108 to 108, 62 to 175, 62 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 223, 175 to 200, 283 to 83, 283 to 62, 108 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 142, 79 to 223, 108 to 175, 62 to 108, 62 to 97, 97 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 205, 142 to 186, 186 to 223, 175 to 200, 283 to 83, 283 to 0, 200 to 108, 223 to 62, 175 to 142, 205 to 97, 186 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 79 to 186, 186 to 175, 62 to 223, 108 to 205, 142 to 223, 175 to 142, 205 to 79, 142 to 97, 186 to 175, 223 to 62, 175 to 97, 97 to 62, 108 to 0, 200 to 83, 283 to 108, 223 to 200, 283 to 283, 200 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 186 to 79, 142 to 97, 97 to 62, 108 to 175, 62 to 142, 79 to 205, 142 to 175, 223 to 186, 186 to 142, 205 to 108, 223 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 223, 175 to 283, 200 to 283, 83 to 223, 108 to 200, 0 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.8
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 223 to 223, 108 to 175, 62 to 108, 62 to 79, 142 to 97, 97 to 142, 79 to 97, 186 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 175, 223 to 186, 186 to 223, 175 to 205, 142 to 142, 205 to 83, 283 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 83, 0 to 200, 0 to 97, 186 to 97, 97 to 62, 175 to 79, 142 to 108, 223 to 175, 223 to 223, 175 to 142, 205 to 205, 142 to 175, 62 to 223, 108 to 186, 186 to 283, 83 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 62, 108 to 142, 79 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 79 to 142, 205 to 223, 175 to 186, 186 to 223, 108 to 205, 142 to 175, 62 to 108, 62 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 175, 223 to 62, 175 to 108, 223 to 200, 283 to 83, 283 to 0, 200 to 79, 142 to 97, 186 to 97, 97 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 223, 108 to 175, 223 to 205, 142 to 79, 142 to 142, 79 to 97, 97 to 62, 108 to 0, 200 to 62, 175 to 142, 205 to 97, 186 to 186, 186 to 108, 223 to 83, 283 to 200, 283 to 283, 200 to 223, 175 to 283, 83 to 175, 62 to 200, 0 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 205, 142 to 79, 142 to 97, 186 to 62, 108 to 108, 223 to 142, 205 to 175, 223 to 223, 175 to 186, 186 to 223, 108 to 175, 62 to 142, 79 to 97, 97 to 108, 62 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 108 to 142, 79 to 108, 62 to 175, 62 to 83, 0 to 200, 0 to 283, 83 to 97, 186 to 142, 205 to 62, 175 to 108, 223 to 175, 223 to 186, 186 to 205, 142 to 283, 200 to 223, 175 to 200, 283 to 83, 283 to 0, 200 to 79, 142 to 62, 108 to 97, 97 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 97, 186 to 108, 223 to 186, 186 to 175, 223 to 223, 175 to 142, 79 to 108, 62 to 97, 97 to 79, 142 to 62, 108 to 83, 0 to 175, 62 to 205, 142 to 200, 0 to 223, 108 to 283, 83 to 283, 200 to 200, 283 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 175 to 108, 62 to 142, 79 to 175, 223 to 97, 97 to 142, 205 to 97, 186 to 79, 142 to 108, 223 to 0, 200 to 83, 283 to 200, 283 to 223, 175 to 205, 142 to 283, 200 to 283, 83 to 223, 108 to 200, 0 to 186, 186 to 175, 62 to 83, 0 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 175, 62 to 223, 108 to 223, 175 to 205, 142 to 175, 223 to 186, 186 to 108, 223 to 97, 186 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 200, 0 to 97, 97 to 142, 79 to 79, 142 to 108, 62 to 83, 0 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 83, 0 to 62, 175 to 108, 223 to 97, 186 to 175, 62 to 142, 79 to 79, 142 to 108, 62 to 97, 97 to 200, 0 to 283, 83 to 223, 108 to 186, 186 to 205, 142 to 142, 205 to 223, 175 to 283, 200 to 200, 283 to 175, 223 to 83, 283 to 0, 200 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 79 to 223, 175 to 205, 142 to 175, 62 to 108, 62 to 83, 0 to 200, 0 to 283, 83 to 223, 108 to 283, 200 to 62, 175 to 108, 223 to 97, 186 to 142, 205 to 175, 223 to 200, 283 to 83, 283 to 0, 200 to 62, 108 to 79, 142 to 186, 186 to 97, 97 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 108 to 223, 108 to 142, 79 to 108, 62 to 97, 97 to 83, 0 to 200, 0 to 175, 62 to 283, 83 to 205, 142 to 97, 186 to 62, 175 to 108, 223 to 142, 205 to 175, 223 to 186, 186 to 223, 175 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 79, 142 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 205, 142 to 62, 175 to 175, 223 to 142, 205 to 186, 186 to 97, 186 to 223, 175 to 175, 62 to 142, 79 to 108, 62 to 97, 97 to 83, 0 to 200, 0 to 223, 108 to 283, 83 to 283, 200 to 200, 283 to 108, 223 to 83, 283 to 0, 200 to 79, 142 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 223 to 97, 97 to 223, 108 to 142, 79 to 108, 62 to 79, 142 to 97, 186 to 62, 108 to 83, 0 to 175, 62 to 200, 0 to 283, 83 to 205, 142 to 142, 205 to 186, 186 to 223, 175 to 175, 223 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 142, 79 to 205, 142 to 175, 62 to 97, 97 to 108, 62 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 223, 175 to 200, 283 to 223, 108 to 186, 186 to 108, 223 to 175, 223 to 83, 283 to 0, 200 to 62, 175 to 97, 186 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 186, 186 to 142, 79 to 205, 142 to 175, 62 to 223, 175 to 142, 205 to 108, 223 to 97, 97 to 97, 186 to 62, 175 to 79, 142 to 62, 108 to 0, 200 to 83, 283 to 200, 283 to 175, 223 to 283, 200 to 283, 83 to 223, 108 to 200, 0 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 205, 142 to 142, 79 to 83, 0 to 200, 0 to 223, 108 to 283, 83 to 283, 200 to 175, 62 to 223, 175 to 200, 283 to 186, 186 to 142, 205 to 97, 186 to 79, 142 to 62, 175 to 175, 223 to 83, 283 to 108, 223 to 0, 200 to 62, 108 to 97, 97 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 108, 223 to 186, 186 to 175, 223 to 223, 175 to 223, 108 to 205, 142 to 175, 62 to 142, 205 to 142, 79 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 83, 283 to 97, 186 to 79, 142 to 97, 97 to 62, 175 to 62, 108 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 108 to 108, 223 to 79, 142 to 97, 186 to 97, 97 to 62, 175 to 62, 108 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 175, 223 to 186, 186 to 142, 205 to 205, 142 to 223, 175 to 283, 83 to 142, 79 to 175, 62 to 200, 0 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 97 to 142, 205 to 175, 62 to 223, 108 to 205, 142 to 175, 223 to 186, 186 to 108, 223 to 62, 175 to 97, 186 to 79, 142 to 62, 108 to 0, 200 to 83, 283 to 200, 283 to 223, 175 to 283, 200 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 142, 79 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 79 to 142, 205 to 205, 142 to 186, 186 to 223, 175 to 108, 223 to 97, 186 to 62, 175 to 79, 142 to 97, 97 to 62, 108 to 0, 200 to 83, 283 to 200, 283 to 175, 223 to 283, 200 to 283, 83 to 223, 108 to 200, 0 to 83, 0 to 175, 62 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 108 to 186, 186 to 108, 62 to 205, 142 to 223, 175 to 175, 223 to 62, 175 to 97, 186 to 142, 205 to 79, 142 to 0, 200 to 108, 223 to 83, 283 to 200, 283 to 283, 200 to 223, 108 to 175, 62 to 283, 83 to 200, 0 to 142, 79 to 83, 0 to 97, 97 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 186 to 62, 175 to 108, 223 to 97, 97 to 142, 79 to 186, 186 to 175, 223 to 205, 142 to 175, 62 to 108, 62 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 223, 108 to 223, 175 to 283, 83 to 283, 200 to 200, 283 to 142, 205 to 83, 283 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.8
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 223 to 205, 142 to 142, 205 to 186, 186 to 175, 223 to 223, 108 to 97, 186 to 142, 79 to 108, 62 to 97, 97 to 79, 142 to 62, 108 to 83, 0 to 175, 62 to 200, 0 to 283, 83 to 283, 200 to 223, 175 to 200, 283 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 79 to 175, 223 to 62, 175 to 79, 142 to 97, 186 to 142, 205 to 97, 97 to 62, 108 to 0, 200 to 108, 223 to 83, 283 to 200, 283 to 223, 175 to 283, 200 to 205, 142 to 223, 108 to 283, 83 to 200, 0 to 186, 186 to 175, 62 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 223 to 97, 97 to 97, 186 to 62, 108 to 79, 142 to 83, 0 to 108, 62 to 142, 79 to 186, 186 to 205, 142 to 223, 175 to 175, 62 to 223, 108 to 200, 0 to 283, 83 to 283, 200 to 142, 205 to 175, 223 to 200, 283 to 83, 283 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 79, 142 to 175, 223 to 62, 108 to 223, 175 to 205, 142 to 223, 108 to 175, 62 to 108, 62 to 142, 79 to 97, 97 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 186, 186 to 200, 283 to 108, 223 to 142, 205 to 97, 186 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 186 to 108, 223 to 142, 79 to 79, 142 to 108, 62 to 62, 108 to 83, 0 to 200, 0 to 97, 97 to 175, 62 to 283, 83 to 186, 186 to 223, 108 to 205, 142 to 142, 205 to 175, 223 to 223, 175 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 205, 142 to 175, 62 to 186, 186 to 142, 79 to 97, 97 to 79, 142 to 62, 108 to 108, 62 to 83, 0 to 200, 0 to 283, 83 to 223, 108 to 223, 175 to 283, 200 to 200, 283 to 108, 223 to 142, 205 to 97, 186 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 205, 142 to 97, 97 to 223, 108 to 223, 175 to 142, 205 to 79, 142 to 186, 186 to 62, 108 to 108, 223 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 97, 186 to 175, 223 to 283, 200 to 283, 83 to 200, 0 to 83, 0 to 175, 62 to 142, 79 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 108 to 175, 223 to 62, 175 to 79, 142 to 97, 186 to 142, 205 to 186, 186 to 205, 142 to 97, 97 to 62, 108 to 0, 200 to 108, 223 to 83, 283 to 200, 283 to 223, 175 to 283, 200 to 283, 83 to 142, 79 to 108, 62 to 175, 62 to 200, 0 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 175, 62 to 79, 142 to 142, 79 to 97, 97 to 62, 108 to 83, 0 to 108, 62 to 200, 0 to 175, 223 to 223, 175 to 186, 186 to 205, 142 to 223, 108 to 283, 83 to 283, 200 to 200, 283 to 97, 186 to 108, 223 to 62, 175 to 83, 283 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 79, 142 to 186, 186 to 223, 175 to 175, 62 to 205, 142 to 108, 62 to 97, 97 to 62, 108 to 83, 0 to 142, 79 to 200, 0 to 283, 83 to 223, 108 to 283, 200 to 200, 283 to 175, 223 to 142, 205 to 97, 186 to 62, 175 to 108, 223 to 83, 283 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 186 to 142, 79 to 175, 223 to 205, 142 to 186, 186 to 175, 62 to 108, 62 to 97, 97 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 223, 175 to 223, 108 to 283, 83 to 283, 200 to 200, 283 to 142, 205 to 108, 223 to 62, 175 to 83, 283 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.8
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 97, 186 to 223, 175 to 108, 223 to 186, 186 to 142, 205 to 62, 175 to 79, 142 to 97, 97 to 62, 108 to 0, 200 to 83, 283 to 200, 283 to 175, 223 to 283, 200 to 283, 83 to 205, 142 to 223, 108 to 142, 79 to 175, 62 to 200, 0 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 79 to 79, 142 to 97, 97 to 62, 175 to 223, 108 to 108, 62 to 83, 0 to 175, 62 to 200, 0 to 283, 83 to 186, 186 to 175, 223 to 223, 175 to 283, 200 to 200, 283 to 142, 205 to 108, 223 to 205, 142 to 97, 186 to 83, 283 to 0, 200 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 186 to 142, 205 to 223, 175 to 205, 142 to 175, 62 to 142, 79 to 108, 62 to 186, 186 to 97, 97 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 223, 108 to 283, 83 to 283, 200 to 108, 223 to 175, 223 to 200, 283 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.8
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 62 to 108, 62 to 83, 0 to 200, 0 to 142, 205 to 186, 186 to 205, 142 to 223, 175 to 223, 108 to 283, 83 to 283, 200 to 200, 283 to 175, 223 to 83, 283 to 62, 175 to 97, 97 to 97, 186 to 79, 142 to 108, 223 to 142, 79 to 62, 108 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 186, 186 to 79, 142 to 142, 79 to 205, 142 to 175, 223 to 108, 223 to 97, 186 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 223, 108 to 223, 175 to 175, 62 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 97, 97 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 79 to 186, 186 to 142, 205 to 97, 97 to 97, 186 to 79, 142 to 108, 223 to 175, 223 to 223, 108 to 205, 142 to 175, 62 to 108, 62 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 223, 175 to 200, 283 to 83, 283 to 62, 108 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 108 to 186, 186 to 223, 175 to 108, 223 to 79, 142 to 97, 186 to 142, 205 to 205, 142 to 97, 97 to 62, 175 to 62, 108 to 0, 200 to 83, 283 to 200, 283 to 175, 223 to 283, 200 to 283, 83 to 175, 62 to 200, 0 to 142, 79 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 186, 186 to 175, 223 to 205, 142 to 223, 175 to 223, 108 to 175, 62 to 108, 62 to 142, 79 to 79, 142 to 97, 97 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 97, 186 to 108, 223 to 83, 283 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 62 to 223, 108 to 205, 142 to 97, 186 to 223, 175 to 175, 223 to 108, 223 to 186, 186 to 142, 205 to 62, 175 to 79, 142 to 142, 79 to 97, 97 to 62, 108 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 200, 0 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 175, 62 to 223, 175 to 97, 97 to 205, 142 to 142, 79 to 62, 108 to 175, 223 to 62, 175 to 97, 186 to 142, 205 to 79, 142 to 0, 200 to 108, 223 to 83, 283 to 200, 283 to 186, 186 to 283, 200 to 283, 83 to 223, 108 to 200, 0 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 175 to 97, 186 to 205, 142 to 186, 186 to 0, 200 to 142, 205 to 108, 223 to 83, 283 to 223, 175 to 175, 223 to 200, 283 to 283, 200 to 175, 62 to 223, 108 to 283, 83 to 200, 0 to 142, 79 to 108, 62 to 97, 97 to 83, 0 to 79, 142 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 175 to 223, 175 to 108, 223 to 186, 186 to 97, 186 to 142, 205 to 0, 200 to 83, 283 to 175, 223 to 200, 283 to 283, 200 to 97, 97 to 205, 142 to 108, 62 to 142, 79 to 223, 108 to 175, 62 to 283, 83 to 200, 0 to 83, 0 to 62, 108 to 79, 142 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 186, 186 to 62, 175 to 97, 186 to 142, 205 to 108, 223 to 175, 223 to 223, 175 to 205, 142 to 223, 108 to 142, 79 to 83, 0 to 175, 62 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 62, 108 to 79, 142 to 97, 97 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 108 to 142, 79 to 97, 97 to 205, 142 to 223, 175 to 175, 62 to 108, 62 to 83, 0 to 200, 0 to 223, 108 to 283, 83 to 283, 200 to 97, 186 to 62, 175 to 142, 205 to 175, 223 to 108, 223 to 200, 283 to 83, 283 to 0, 200 to 79, 142 to 186, 186 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 186, 186 to 79, 142 to 175, 62 to 108, 62 to 142, 79 to 97, 97 to 62, 108 to 83, 0 to 200, 0 to 223, 175 to 223, 108 to 283, 83 to 283, 200 to 200, 283 to 205, 142 to 175, 223 to 83, 283 to 108, 223 to 97, 186 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 62 to 223, 108 to 108, 223 to 97, 97 to 142, 79 to 62, 108 to 0, 200 to 62, 175 to 79, 142 to 97, 186 to 83, 283 to 200, 283 to 223, 175 to 186, 186 to 175, 223 to 142, 205 to 205, 142 to 283, 200 to 283, 83 to 200, 0 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 108 to 97, 97 to 79, 142 to 186, 186 to 97, 186 to 142, 205 to 175, 223 to 62, 175 to 62, 108 to 0, 200 to 108, 223 to 83, 283 to 200, 283 to 283, 200 to 223, 175 to 205, 142 to 283, 83 to 200, 0 to 175, 62 to 142, 79 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 186 to 142, 205 to 97, 97 to 79, 142 to 62, 108 to 175, 62 to 223, 108 to 142, 79 to 223, 175 to 175, 223 to 186, 186 to 108, 223 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 205, 142 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.8
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 186 to 142, 79 to 175, 62 to 223, 108 to 205, 142 to 186, 186 to 175, 223 to 142, 205 to 108, 223 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 223, 175 to 283, 200 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 97, 97 to 62, 108 to 79, 142 to 0, 83 to 0, 83 fillstyle transparent solid 0.8
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 175 to 223, 108 to 108, 62 to 142, 79 to 205, 142 to 62, 108 to 97, 97 to 83, 0 to 200, 0 to 175, 62 to 283, 83 to 283, 200 to 79, 142 to 186, 186 to 142, 205 to 175, 223 to 200, 283 to 83, 283 to 0, 200 to 108, 223 to 97, 186 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 175, 62 to 142, 79 to 97, 97 to 79, 142 to 108, 62 to 62, 108 to 83, 0 to 200, 0 to 186, 186 to 223, 175 to 205, 142 to 223, 108 to 283, 83 to 283, 200 to 200, 283 to 83, 283 to 142, 205 to 108, 223 to 97, 186 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 62, 175 to 97, 186 to 142, 205 to 223, 175 to 175, 62 to 108, 62 to 97, 97 to 142, 79 to 205, 142 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 223, 108 to 283, 200 to 175, 223 to 108, 223 to 200, 283 to 83, 283 to 0, 200 to 79, 142 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 79, 142 to 62, 108 to 223, 108 to 142, 79 to 175, 62 to 97, 97 to 83, 0 to 108, 62 to 200, 0 to 283, 83 to 97, 186 to 175, 223 to 142, 205 to 223, 175 to 186, 186 to 205, 142 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 62, 175 to 108, 223 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 175 to 108, 223 to 186, 186 to 79, 142 to 62, 175 to 97, 186 to 142, 205 to 0, 200 to 83, 283 to 175, 223 to 200, 283 to 283, 200 to 283, 83 to 205, 142 to 97, 97 to 175, 62 to 142, 79 to 223, 108 to 200, 0 to 83, 0 to 108, 62 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 79, 142 to 97, 97 to 205, 142 to 186, 186 to 97, 186 to 175, 223 to 142, 205 to 223, 175 to 223, 108 to 175, 62 to 108, 62 to 142, 79 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 62, 175 to 108, 223 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 79, 142 to 205, 142 to 97, 97 to 223, 108 to 223, 175 to 175, 223 to 142, 205 to 97, 186 to 186, 186 to 62, 175 to 62, 108 to 0, 200 to 108, 223 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 200, 0 to 175, 62 to 142, 79 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 186 to 175, 223 to 223, 175 to 142, 79 to 175, 62 to 97, 97 to 186, 186 to 142, 205 to 79, 142 to 108, 62 to 62, 108 to 83, 0 to 200, 0 to 205, 142 to 223, 108 to 283, 83 to 283, 200 to 200, 283 to 108, 223 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.8
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 108 to 0, 200 to 62, 175 to 223, 108 to 175, 223 to 108, 223 to 142, 205 to 186, 186 to 205, 142 to 97, 186 to 83, 283 to 200, 283 to 283, 200 to 223, 175 to 283, 83 to 200, 0 to 97, 97 to 142, 79 to 175, 62 to 79, 142 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 175 to 97, 97 to 142, 79 to 108, 62 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 223, 108 to 175, 62 to 205, 142 to 283, 200 to 62, 175 to 97, 186 to 108, 223 to 142, 205 to 175, 223 to 200, 283 to 83, 283 to 0, 200 to 79, 142 to 186, 186 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 223 to 186, 186 to 97, 97 to 142, 205 to 97, 186 to 62, 108 to 83, 0 to 79, 142 to 108, 62 to 142, 79 to 200, 0 to 283, 83 to 283, 200 to 223, 175 to 223, 108 to 205, 142 to 175, 62 to 200, 283 to 175, 223 to 83, 283 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 79, 142 to 97, 97 to 223, 108 to 108, 223 to 97, 186 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 223, 175 to 175, 223 to 142, 205 to 186, 186 to 205, 142 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 175, 62 to 142, 79 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 79, 142 to 108, 62 to 97, 97 to 223, 108 to 186, 186 to 223, 175 to 175, 223 to 108, 223 to 97, 186 to 142, 205 to 205, 142 to 62, 175 to 0, 200 to 83, 283 to 200, 283 to 283, 200 to 283, 83 to 142, 79 to 175, 62 to 200, 0 to 83, 0 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 108 to 175, 62 to 142, 79 to 108, 62 to 83, 0 to 200, 0 to 283, 83 to 223, 175 to 142, 205 to 175, 223 to 283, 200 to 200, 283 to 97, 186 to 79, 142 to 108, 223 to 62, 175 to 83, 283 to 0, 200 to 62, 108 to 186, 186 to 205, 142 to 97, 97 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 175, 223 to 205, 142 to 142, 79 to 186, 186 to 83, 0 to 175, 62 to 223, 175 to 223, 108 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 97, 97 to 108, 223 to 142, 205 to 83, 283 to 0, 200 to 97, 186 to 79, 142 to 62, 175 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 83, 0 to 205, 142 to 108, 223 to 142, 205 to 175, 223 to 223, 175 to 186, 186 to 223, 108 to 175, 62 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 97, 186 to 97, 97 to 79, 142 to 62, 175 to 62, 108 to 142, 79 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 175, 62 to 108, 62 to 97, 97 to 142, 79 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 186, 186 to 108, 223 to 175, 223 to 205, 142 to 223, 108 to 283, 83 to 223, 175 to 283, 200 to 200, 283 to 83, 283 to 0, 200 to 97, 186 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 205, 142 to 223, 108 to 223, 175 to 175, 223 to 62, 175 to 142, 205 to 97, 186 to 79, 142 to 0, 200 to 83, 283 to 108, 223 to 200, 283 to 283, 200 to 283, 83 to 97, 97 to 142, 79 to 175, 62 to 62, 108 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 108 to 142, 79 to 205, 142 to 175, 62 to 223, 108 to 223, 175 to 97, 97 to 142, 205 to 97, 186 to 108, 223 to 62, 175 to 79, 142 to 0, 200 to 83, 283 to 186, 186 to 175, 223 to 200, 283 to 283, 200 to 283, 83 to 200, 0 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 223 to 205, 142 to 223, 175 to 223, 108 to 142, 79 to 97, 186 to 79, 142 to 108, 62 to 62, 108 to 83, 0 to 200, 0 to 97, 97 to 175, 62 to 283, 83 to 283, 200 to 200, 283 to 186, 186 to 142, 205 to 175, 223 to 83, 283 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 186, 186 to 108, 62 to 205, 142 to 142, 79 to 175, 62 to 223, 108 to 175, 223 to 79, 142 to 0, 200 to 62, 175 to 97, 186 to 108, 223 to 83, 283 to 142, 205 to 200, 283 to 223, 175 to 283, 200 to 283, 83 to 200, 0 to 83, 0 to 97, 97 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 62, 175 to 108, 223 to 205, 142 to 142, 205 to 223, 175 to 186, 186 to 223, 108 to 142, 79 to 175, 62 to 108, 62 to 79, 142 to 97, 97 to 97, 186 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 175, 223 to 83, 283 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 205 to 97, 97 to 142, 79 to 205, 142 to 186, 186 to 108, 223 to 175, 223 to 223, 175 to 175, 62 to 108, 62 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 223, 108 to 283, 200 to 200, 283 to 83, 283 to 97, 186 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 97, 186 to 175, 223 to 142, 79 to 108, 62 to 142, 205 to 97, 97 to 79, 142 to 62, 108 to 83, 0 to 223, 175 to 205, 142 to 175, 62 to 200, 0 to 223, 108 to 283, 83 to 283, 200 to 186, 186 to 200, 283 to 83, 283 to 108, 223 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.8
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 142, 79 to 205, 142 to 142, 205 to 97, 186 to 108, 223 to 62, 175 to 79, 142 to 97, 97 to 62, 108 to 0, 200 to 83, 283 to 186, 186 to 223, 175 to 175, 223 to 200, 283 to 283, 200 to 223, 108 to 175, 62 to 283, 83 to 200, 0 to 83, 0 to 108, 62 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 205, 142 to 223, 108 to 97, 97 to 108, 62 to 83, 0 to 142, 79 to 200, 0 to 175, 62 to 283, 83 to 186, 186 to 142, 205 to 108, 223 to 175, 223 to 223, 175 to 283, 200 to 200, 283 to 83, 283 to 62, 175 to 97, 186 to 79, 142 to 0, 200 to 62, 108 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 62 to 142, 205 to 108, 223 to 186, 186 to 142, 79 to 83, 0 to 175, 62 to 205, 142 to 223, 175 to 223, 108 to 200, 0 to 283, 83 to 283, 200 to 200, 283 to 175, 223 to 83, 283 to 79, 142 to 97, 186 to 97, 97 to 62, 108 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 108, 223 to 62, 108 to 108, 62 to 223, 175 to 142, 79 to 83, 0 to 200, 0 to 283, 83 to 175, 62 to 205, 142 to 223, 108 to 283, 200 to 142, 205 to 186, 186 to 97, 97 to 79, 142 to 97, 186 to 175, 223 to 200, 283 to 83, 283 to 0, 200 to 62, 175 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 223, 108 to 205, 142 to 142, 79 to 175, 62 to 97, 97 to 186, 186 to 79, 142 to 108, 62 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 223, 175 to 200, 283 to 83, 283 to 108, 223 to 0, 200 to 62, 175 to 97, 186 to 142, 205 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 223, 108 to 186, 186 to 205, 142 to 142, 205 to 108, 223 to 97, 97 to 79, 142 to 62, 108 to 0, 200 to 62, 175 to 97, 186 to 83, 283 to 223, 175 to 175, 223 to 200, 283 to 283, 200 to 283, 83 to 175, 62 to 200, 0 to 142, 79 to 108, 62 to 83, 0 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

set xrange [0:283]

set yrange [0:283]
set object 1 polygon from 0, 83 to 175, 223 to 175, 62 to 108, 62 to 142, 79 to 97, 97 to 79, 142 to 62, 108 to 83, 0 to 200, 0 to 283, 83 to 283, 200 to 223, 108 to 205, 142 to 223, 175 to 186, 186 to 200, 283 to 142, 205 to 83, 283 to 108, 223 to 97, 186 to 62, 175 to 0, 200 to 0, 83 to 0, 83 fillstyle transparent solid 0.1
plot f(x) with lines ls 1

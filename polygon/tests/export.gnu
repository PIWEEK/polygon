set terminal png
set output 'polygon.png'
set xrange [-1:20]
set yrange [-1:20]

plot 'data.gnu'  using 1:2 with lines

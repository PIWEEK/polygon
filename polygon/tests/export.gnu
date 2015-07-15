set terminal png
set output 'polygon.png'
set xrange [-1:11]
set yrange [-1:11]

plot 'data.gnu'  using 1:2 with lines

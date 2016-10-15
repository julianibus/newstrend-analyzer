set xdata time
set title "Newstrend for keyword '".filename."'"
set xlabel "Time"
set ylabel "Ocurances"
set autoscale xy
set format x "%H:%M"
set timefmt "%Y-%m-%d:%H:%M:%S"
set grid ytics lt 0 lw 1 lc rgb "#bbbbbb"
set grid xtics lt 0 lw 1 lc rgb "#bbbbbb"
set terminal png size 400,300 enhanced font "Helvetica,20"
set terminal png size 800,500
set output filename
plot "output" using 1:2 smooth csplines

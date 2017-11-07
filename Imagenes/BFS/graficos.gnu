#! /usr/bin/gnuplot

# reset all set commands to defalut
reset

# Define data file names
file1 = 'Gartling_X7.dat'
file2 = 'Gartling_X15.dat'
file3 = 'CasoF_X7.dat'
file4 = 'CasoF_X15.dat'

# Set terminal and output name
set term postscript eps enhanced dashlength 1 "Times-Roman" 21

# Set plot details
set border lt 1 lw 1
set tmargin 1; set bmargin 4; set rmargin 4; set lmargin 8

# Acentos
set encoding iso_8859_1
#á=\341 
#é=\351 
#í=\355 
#ó=\363 
#ú=\372


# Set line styles
set style line 1 lt 1 lw 2 lc rgb 'black' pt 7 
set style line 2 lt 2 lw 2 lc rgb 'black' pt 6 
set style line 3 lt 1 lw 2 lc rgb 'blue' pt 4
set style line 4 lt 1 lw 2 lc rgb 'green' pt 7  
set style line 5 lt 1 lw 2 lc rgb 'magenta' pt 7  
set style line 6 lt 1 lw 2 lc rgb 'blue' pt 7

# Set point size
set pointsize 0.75

# Set x axis details
set xrange [*:*]
set xtics mirror out rotate by 0.0 offset 0,0 
set xtics
set mxtics

# Set y axis details
set yrange [*:*]
set ytics mirror out rotate by 0.0 offset 0,0 
set ytics
set mytics


#set ticslevel 0.2

# Set legend details
#set key at 5,5
#set key on 
#show key
# Justify legend left 
set key top left  font ",18"

#set logscale y
#set format y "10^{%L}"

#set key at 8,19 font ",18"

set output "Uy_bfs.eps"
    set xlabel 'U_{y}' offset 0,-0.2 enhanced font ",27"
    set ylabel 'y' offset 1.5,0 enhanced font ",27"
    set yrange[*:*]
    plot file1 u ($3/100):1 w p ls 1 title 'Gartling (X=7)',file3 u 4:1 w l ls 1 title 'OpenFOAM (X=7)',file2 u ($3/100):1 w p ls 2 title 'Gartling (X=15)',file4 u 4:1 w l ls 2 title 'OpenFOAM (X=15)'
unset output


set key top right
set output "Ux_bfs.eps"
    set xlabel 'U_{x}' offset 0,-0.2 enhanced font ",27"
    set ylabel 'y' offset 1.5,0 enhanced font ",27"
    set yrange[*:*]
    plot file1 u 2:1 w p ls 1 title 'Gartling (X=7)',file3 u 3:1 w l ls 1 title 'OpenFOAM (X=7)',file2 u 2:1 w p ls 2 title 'Gartling (X=15)',file4 u 3:1 w l ls 2 title 'OpenFOAM (X=15)'
unset output

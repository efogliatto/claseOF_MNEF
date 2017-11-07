#! /usr/bin/gnuplot

# reset all set commands to defalut
reset

# Define data file names
file1 = 'Moser.dat'
file2 = 'SpalartAllmaras.dat'
file3 = 'kepsilon.dat'
file4 = 'realizable.dat'
file5 = 'LaunderSharma.dat'

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
set style line 1 lt 1 lw 3 lc rgb 'black' pt 7 
set style line 2 lt 2 lw 3 lc rgb 'black' pt 7 
set style line 3 lt 3 lw 3 lc rgb 'black' pt 4
set style line 4 lt 4 lw 3 lc rgb 'black' pt 7  
set style line 5 lt 5 lw 3 lc rgb 'black' pt 7  
set style line 6 lt 6 lw 3 lc rgb 'black' pt 7

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
set key at 0.02,1.17 font ",18"

set logscale x
set format x "10^{%L}"

set output "Ux.eps"
    set xlabel 'y+' offset 0,-0.2 enhanced font ",27" 
    set ylabel 'u+' offset 0.5,0 enhanced font ",27"
    set yrange[*:*]
    set xrange[0.001:1]
    plot file1 u 1:2 w p ls 1 title 'DNS',file2 u ($1+1):2 w l ls 1 title 'Spalart-Allmaras',file4 u ($1+1):2 w l ls 3 title 'realizable',file5 u ($1+1):2 w l ls 4 title 'Launder-Sharma'
unset output

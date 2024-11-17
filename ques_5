set terminal postscript size 6,6 font 'Arial, 15'
set output "/home/bec51303/bec-513-coding-questions/data/ques_5/big_matrix.eps"
 
set style line 1 lc rgb 'black' lw 4
set border linestyle 1 lw 4

set xrange [0:2000]
set yrange [0:100000]

set palette defined (0 "white", 3 "blue")

set cbrange [0:3]
set cbtics 50 font "Arial-Bold,20" 

plot'/home/bec51303/bec-513-coding-questions/data/ques-5/demo_data.tsv' matrix with image

set terminal fig color 
set xlabel 'Number of features [-]' offset 0.0,0.3
set ylabel 'Error rate [%]' offset 1.2,0.0
set size 0.7,0.9
set title 'Localisation error rate vs. number of features used'
set key right top 
plot [1:50] [:]\

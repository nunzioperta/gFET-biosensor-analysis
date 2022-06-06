#Before running plot.sh, make sure you have the following programs installed: Dos2Unix; awk; gnuplot.

#The Grasense program generates text files in DOS format. To avoid issues while running the script on a Unix machine, the starting files must be converted into the appropriate format.

dos2unix BLANK.txt
dos2unix SAMPLE.txt

#When Vgate = 0, variables are generated in which the current values (in microamperes) are recorded. This applies to the acquisition of both the blank and the sample.

#BLANK  

amper2=`awk 'NR==19{print $2}' BLANK.txt`  

amper3=`awk 'NR==19{print $3}' BLANK.txt`

amper4=`awk 'NR==19{print $4}' BLANK.txt`

amper5=`awk 'NR==19{print $5}' BLANK.txt`

amper6=`awk 'NR==19{print $6}' BLANK.txt`

amper7=`awk 'NR==19{print $7}' BLANK.txt`

amper8=`awk 'NR==19{print $8}' BLANK.txt`

amper9=`awk 'NR==19{print $9}' BLANK.txt`

amper10=`awk 'NR==19{print $10}' BLANK.txt`

amper11=`awk 'NR==19{print $11}' BLANK.txt`

amper12=`awk 'NR==19{print $12}' BLANK.txt`

amper13=`awk 'NR==19{print $13}' BLANK.txt`

#SAMPLE

amper2a=`awk 'NR==19{print $2}' SAMPLE.txt`  

amper3a=`awk 'NR==19{print $3}' SAMPLE.txt`

amper4a=`awk 'NR==19{print $4}' SAMPLE.txt`

amper5a=`awk 'NR==19{print $5}' SAMPLE.txt`

amper6a=`awk 'NR==19{print $6}' SAMPLE.txt`

amper7a=`awk 'NR==19{print $7}' SAMPLE.txt`

amper8a=`awk 'NR==19{print $8}' SAMPLE.txt`

amper9a=`awk 'NR==19{print $9}' SAMPLE.txt`

amper10a=`awk 'NR==19{print $10}' SAMPLE.txt`

amper11a=`awk 'NR==19{print $11}' SAMPLE.txt`

amper12a=`awk 'NR==19{print $12}' SAMPLE.txt`

amper13a=`awk 'NR==19{print $13}' SAMPLE.txt`

#It is determined whether the current value (already saved) for each variable is larger than 50.0. The same channels must be paired in both acquisitions, therefore to promote that channel N (where Nmax = 12), it must have a current value greater than 50 in both acquisitions (i.e., we add the Boolean variable "&&").

if (( $(echo "$amper2 > 50.0" |bc -l) )) && (( $(echo "$amper2a > 50.0" |bc -l) )) ; then 
  awk -F'\t' '{print $2}' BLANK.txt > BLANK_2.txt
  awk -F'\t' '{print $2}' SAMPLE.txt > SAMPLE_2.txt
fi

if (( $(echo "$amper3 > 50.0" |bc -l) )) && (( $(echo "$amper3a > 50.0" |bc -l) )) ; then 
  awk -F'\t' '{print $3}' BLANK.txt  > BLANK_3.txt
  awk -F'\t' '{print $3}' SAMPLE.txt  > SAMPLE_3.txt
fi

if (( $(echo "$amper4 > 50.0" |bc -l) )) && (( $(echo "$amper4a > 50.0" |bc -l) )) ; then 
  awk -F'\t' '{print $4}' BLANK.txt  > BLANK_4.txt
  awk -F'\t' '{print $4}' SAMPLE.txt  > SAMPLE_4.txt
fi

if (( $(echo "$amper5 > 50.0" |bc -l) )) && (( $(echo "$amper5a > 50.0" |bc -l) )) ; then 
  awk -F'\t' '{print $5}' BLANK.txt  > BLANK_5.txt
  awk -F'\t' '{print $5}' SAMPLE.txt  > SAMPLE_5.txt 
fi

if (( $(echo "$amper6 > 50.0" |bc -l) )) && (( $(echo "$amper6a > 50.0" |bc -l) )) ; then 
  awk -F'\t' '{print $6}' BLANK.txt  > BLANK_6.txt
  awk -F'\t' '{print $6}' SAMPLE.txt  > SAMPLE_6.txt
fi

if (( $(echo "$amper7 > 50.0" |bc -l) )) && (( $(echo "$amper7a > 50.0" |bc -l) )) ; then 
  awk -F'\t' '{print $7}' BLANK.txt  > BLANK_7.txt
  awk -F'\t' '{print $7}' SAMPLE.txt  > SAMPLE_7.txt
fi

if (( $(echo "$amper8 > 50.0" |bc -l) )) && (( $(echo "$amper8a > 50.0" |bc -l) )) ; then 
  awk -F'\t' '{print $8}' BLANK.txt  > BLANK_8.txt
  awk -F'\t' '{print $8}' SAMPLE.txt  > SAMPLE_8.txt
fi

if (( $(echo "$amper9 > 50.0" |bc -l) )) && (( $(echo "$amper9a > 50.0" |bc -l) )) ; then 
  awk -F'\t' '{print $9}' BLANK.txt  > BLANK_9.txt
  awk -F'\t' '{print $9}' SAMPLE.txt  > SAMPLE_9.txt
fi
if (( $(echo "$amper10 > 50.0" |bc -l) )) && (( $(echo "$amper10a > 50.0" |bc -l) )) ; then 
  awk -F'\t' '{print $10}' BLANK.txt  > BLANK_10.txt
  awk -F'\t' '{print $10}' SAMPLE.txt  > SAMPLE_10.txt
fi

if (( $(echo "$amper11 > 50.0" |bc -l) )) && (( $(echo "$amper11a > 50.0" |bc -l) )) ; then 
  awk -F'\t' '{print $11}' BLANK.txt  > BLANK_11.txt
  awk -F'\t' '{print $11}' SAMPLE.txt  > SAMPLE_11.txt
fi

if (( $(echo "$amper12 > 50.0" |bc -l) )) && (( $(echo "$amper12a > 50.0" |bc -l) )) ; then 
  awk -F'\t' '{print $12}' BLANK.txt  > BLANK_12.txt
  awk -F'\t' '{print $12}' SAMPLE.txt  > SAMPLE_12.txt
fi

if (( $(echo "$amper13 > 50.0" |bc -l) )) && (( $(echo "$amper13a > 50.0" |bc -l) )) ; then 
  awk -F'\t' '{print $13}' BLANK.txt  > BLANK_13.txt
  awk -F'\t' '{print $13}' SAMPLE.txt  > SAMPLE_13.txt
fi

#Put in a new file (i.e., BLANK_ALL.txt) just the BLANK acquisition channels that were promoted in the previous step.

pr -mts  BLANK_2.txt BLANK_3.txt BLANK_4.txt BLANK_5.txt BLANK_6.txt BLANK_7.txt BLANK_8.txt BLANK_9.txt BLANK_10.txt BLANK_11.txt BLANK_12.txt BLANK_13.txt > BLANK_ALL.txt

#We delete any text files that are no longer needed.

rm BLANK_2.txt BLANK_3.txt BLANK_4.txt BLANK_5.txt BLANK_6.txt BLANK_7.txt BLANK_8.txt BLANK_9.txt BLANK_10.txt BLANK_11.txt BLANK_12.txt BLANK_13.txt

#Put in a new file (i.e., SAMPLE_ALL.txt) just the BLANK acquisition channels that were promoted in the previous step.

pr -mts SAMPLE_2.txt SAMPLE_3.txt SAMPLE_4.txt SAMPLE_5.txt SAMPLE_6.txt SAMPLE_7.txt SAMPLE_8.txt SAMPLE_9.txt SAMPLE_10.txt SAMPLE_11.txt SAMPLE_12.txt SAMPLE_13.txt > SAMPLE_ALL.txt 

#We delete any text files that are no longer needed.

rm SAMPLE_2.txt SAMPLE_3.txt SAMPLE_4.txt SAMPLE_5.txt SAMPLE_6.txt SAMPLE_7.txt SAMPLE_8.txt SAMPLE_9.txt SAMPLE_10.txt SAMPLE_11.txt SAMPLE_12.txt SAMPLE_13.txt

#We create new files in which the lines beginning from 19 are preserved.

tail -n +19 BLANK_ALL.txt > BLANK_VSHAPED.txt
tail -n +19 SAMPLE_ALL.txt > SAMPLE_VSHAPED.txt

#We delete any text files that are no longer needed.

rm BLANK_ALL.txt
rm SAMPLE_ALL.txt
 
#The values for each row are averaged (i.e, the current values for each channel for a specific Vgate value are averaged).

awk '{sum = 0; for (i = 1; i <= NF; i++) sum += $i; sum /= NF; print sum}' BLANK_VSHAPED.txt > BLANK_PBS.txt

awk '{sum = 0; for (i = 1; i <= NF; i++) sum += $i; sum /= NF; print sum}' SAMPLE_VSHAPED.txt > SAMPLE_ACQUISITION.txt

#We delete any text files that are no longer needed.

rm BLANK_VSHAPED.txt
rm SAMPLE_VSHAPED.txt

#Let's make a chart using gnuplot.

gnuplot -persist <<-EOFMarker
	set xlabel "Vg [V]"
	set xlabel font "Helvetica, 14"
	set xtics font "Helvetica, 14" 
	set ylabel "Current [uA]" 
	set ylabel font "Helvetica, 14" 
	set ytics font "Helvetica, 14"  
	set key font "Helvetica, 12"
	set key center 
	set key top
	plot 'BLANK_PBS.txt' w l lt 8 lw 2, 'SAMPLE_ACQUISITION.txt' w l lt 7 lw 2
EOFMarker


#Before running analysis.sh, make sure the following files are in the working directory: min.py, paired.py, BLANK.txt, and SAMPLE.txt.

#Before running plot.sh, make sure you have the following programs installed: python3; python2; SciPy; NumPy; Dos2Unix; awk; Unix shell.

#1. The text files used in the analyses are from the "Grasense" application, which is exclusively available for Windows. As a result, it will return "Dos formatted" files. We may encounter issues when processing files in "Unix" (e.g., end-of-line signaling). To avoid any portability issues, we send the files to Dos2Unix.

dos2unix BLANK.txt
dos2unix SAMPLE.txt

#2. In bash, we use awk to generate variables. In practice, we get the data from the first row of each column in the BLANK.txt and SAMPLE.txt files. N.B. The first column (i.e., 1) is ignored because it reports the Vgate values needed to obtain the curves.

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

amper22=`awk 'NR==19{print $2}' SAMPLE.txt`  

amper33=`awk 'NR==19{print $3}' SAMPLE.txt`  

amper44=`awk 'NR==19{print $4}' SAMPLE.txt`  

amper55=`awk 'NR==19{print $5}' SAMPLE.txt`  

amper66=`awk 'NR==19{print $6}' SAMPLE.txt`  

amper77=`awk 'NR==19{print $7}' SAMPLE.txt`  

amper88=`awk 'NR==19{print $8}' SAMPLE.txt`  

amper99=`awk 'NR==19{print $9}' SAMPLE.txt`  

amper100=`awk 'NR==19{print $10}' SAMPLE.txt`  

amper111=`awk 'NR==19{print $11}' SAMPLE.txt`  

amper122=`awk 'NR==19{print $12}' SAMPLE.txt`  

amper133=`awk 'NR==19{print $13}' SAMPLE.txt`  

#3. The program's main body. The if statement is used here to determine whether the curves respect certain criteria. In fact, in order to identify the lowest point of the curve (equivalent to the Dirac point), the curve at Vg = 0 must have a value larger than 50 micro amperes. Furthermore, to guarantee that the BLANK.txt and SAMPLE.txt acquisitions have a reciprocal relationship, both curves for both channels (e.g., 2, 3, 4, 5,...) must have values larger than 50 micro amps. As a result, we utilize the Boolean variable &&, which corresponds to the more familiar "AND." This is an initial filtering technique that allows you to pre-filter out unimportant curves.


if (( $(echo "$amper2 > 50.0" |bc -l) )) &&  (( $(echo "$amper22 > 50.0" |bc -l) )) ; then
  python min.py BLANK.txt 2   >>  A1_BLANK.txt
  python min.py SAMPLE.txt 2   >>  A1_SAMPLE.txt
fi

if (( $(echo "$amper3 > 50.0" |bc -l) )) && (( $(echo "$amper33 > 50.0" |bc -l) )) ; then
  python min.py BLANK.txt 3   >>  A1_BLANK.txt
  python min.py SAMPLE.txt 3   >>  A1_SAMPLE.txt
fi

if (( $(echo "$amper4 > 50.0" |bc -l) )) && (( $(echo "$amper44 > 50.0" |bc -l) )) ; then
  python min.py BLANK.txt 4   >>  A1_BLANK.txt
  python min.py SAMPLE.txt 4   >>  A1_SAMPLE.txt
fi

if (( $(echo "$amper5 > 50.0" |bc -l) )) && (( $(echo "$amper55 > 50.0" |bc -l) ))  ; then
  python min.py BLANK.txt 5   >>  A1_BLANK.txt
  python min.py SAMPLE.txt 5   >>  A1_SAMPLE.txt
fi

if (( $(echo "$amper6 > 50.0" |bc -l) )) && (( $(echo "$amper66 > 50.0" |bc -l) )) ; then
  python min.py BLANK.txt 6   >>  A1_BLANK.txt
  python min.py SAMPLE.txt 6   >>  A1_SAMPLE.txt
fi

if (( $(echo "$amper7 > 50.0" |bc -l) ))  && (( $(echo "$amper77 > 50.0" |bc -l) )) ; then
  python min.py BLANK.txt 7   >>  A1_BLANK.txt
  python min.py SAMPLE.txt 7   >>  A1_SAMPLE.txt
fi

if (( $(echo "$amper8 > 50.0" |bc -l) ))  && (( $(echo "$amper88 > 50.0" |bc -l) )) ; then
  python min.py BLANK.txt 8   >>  A1_BLANK.txt
  python min.py SAMPLE.txt 8   >>  A1_SAMPLE.txt
fi

if (( $(echo "$amper9 > 50.0" |bc -l) )) && (( $(echo "$amper99 > 50.0" |bc -l) )) ; then
  python min.py BLANK.txt 9   >>  A1_BLANK.txt
  python min.py SAMPLE.txt 9   >>  A1_SAMPLE.txt
fi

if (( $(echo "$amper10 > 50.0" |bc -l) )) && (( $(echo "$amper100 > 50.0" |bc -l) )) ; then
  python min.py BLANK.txt 10   >>  A1_BLANK.txt
  python min.py SAMPLE.txt 10   >>  A1_SAMPLE.txt
fi

if (( $(echo "$amper11 > 50.0" |bc -l) )) && (( $(echo "$amper111 > 50.0" |bc -l) )) ; then
  python min.py BLANK.txt 11   >>  A1_BLANK.txt
  python min.py SAMPLE.txt 11   >>  A1_SAMPLE.txt
fi

if (( $(echo "$amper12 > 50.0" |bc -l) )) && (( $(echo "$amper122 > 50.0" |bc -l) )) ; then
  python min.py BLANK.txt 12   >>  A1_BLANK.txt
  python min.py SAMPLE.txt 12   >>  A1_SAMPLE.txt
fi

if (( $(echo "$amper13 > 50.0" |bc -l) )) && (( $(echo "$amper133 > 50.0" |bc -l) )) ; then
  python min.py BLANK.txt 13   >>  A1_BLANK.txt
  python min.py SAMPLE.txt 13   >>  A1_SAMPLE.txt
fi

#4. We combine the two files using the lowest values found for each usable channel.

paste A1_BLANK.txt A1_SAMPLE.txt > A1.txt

#We delete any text files that are no longer needed.

rm A1_BLANK.txt
rm A1_SAMPLE.txt

#5. We produce a file that contains the differences in Dirac values (i.e., minimum) between the blank and sample (of reciprocal channels).

awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$7-$3}' A1.txt > A1_diff.txt

#We delete a text file that is no longer needed.

rm A1.txt

#6. The statistics files are generated.

python3 paired.py  A1_diff.txt > STAT.txt

#We delete a text file that is no longer needed.

rm A1_diff.txt

#awk 'FNR == 10 {print $3}' STAT.txt > min_BLANK.txt

#awk 'FNR == 11 {print $3}' STAT.txt > min_SAMPLE.txt

#awk 'FNR == 12 {print $2}' STAT.txt > pvalue.txt

#awk 'FNR == 13 {print $1}' STAT.txt > sd_BLANK.txt

#awk 'FNR == 14 {print $1}' STAT.txt > sd_SAMPLE.txt

#awk 'FNR == 15 {print $4}' STAT.txt > norm_BLANK.txt

#awk 'FNR == 16 {print $4}' STAT.txt > norm_SAMPLE.txt

#paste min_BLANK.txt sd_BLANK.txt min_SAMPLE.txt sd_SAMPLE.txt pvalue.txt > plot.txt

#paste norm_BLANK.txt sd_BLANK.txt norm_SAMPLE.txt sd_SAMPLE.txt > plot_norm.txt

#rm  min_BLANK.txt min_SAMPLE.txt pvalue.txt sd_BLANK.txt sd_SAMPLE.txt norm_BLANK.txt norm_SAMPLE.txt

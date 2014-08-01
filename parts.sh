ba=`basename ${1-f0} .svg`
di=`dirname  ${1-f0}`
o=parts


#inkscape -S ${ba}.svg|cut -d"," -f1|sed -e "s%\(.*\)%inkscape -z -i\1 -e$o/${ba}-\1.png ${ba}.svg%"
inkscape -S $di/$ba.svg|cut -d"," -f1|sed -e "s%\(.*\)%inkscape -z -j -i\1 -e$o/${ba}-\1.png $di/${ba}.svg%"

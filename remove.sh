ba=`basename ${1-fc1} .svg|cut -c1-2` 
cn=`basename ${1-fc1} .svg|cut -c3-` 
di=`dirname  ${1-fc1}`
co=${2-2}
do=base

shift
shift
pa=""
for par 
do tem=`inkscape -S $di/$ba$cn.svg|grep -i ${par}`
   if [ -n "${tem}" ]
   then pa="${pa} --select=${par} --verb=EditDelete"
   else echo "Path $par nao existe no svg $ba"
   fi
done

if [ -n "${pa}" ]
then cm=`expr 1 + $cn`
     while [ -f $di/$ba$cm.svg -a $cm -le $co ]
     do cm=`expr 1 + $cm`
     done
     # Da comandos para remover elementos de svg
     cp $di/$ba$cn.svg $do/$ba$cm.svg 
     inkscape $do/$ba$cm.svg ${pa} --verb=FileSave --verb=FileClose
else inkscape -S $di/$ba$cn.svg
fi

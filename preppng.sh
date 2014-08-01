#!/bin/bash

PROGNAME=${0##*/}

currentsvgcolors()
{
# Color schema baseado no estudo feito em http://colorschemedesigner.com
# representa as cores actuais nos svg obtidas com -f
# [IMPORTANTE] Altere manualmente after -[ce]? para mudar svgs
# [IMPORTANTE] All svg's have to be passed throught:
#              inkscape -l new.svg old.svg (inkscape svg format)
#              the inkscape svg format is necessary for this script
#              the fill:<color> format is used in this script
#              optionaly you can save as plain svg (inkscape gui)

# Numero total de cores no palette fruga (USADO EM TODO SCRIPT)
j=0 
j=`expr $j + 1`;vco[$j]="#3f3f3f";dco[$j]="cinza"                      #c1
j=`expr $j + 1`;vco[$j]="#f7f7f7";dco[$j]="white"                      #c2
j=`expr $j + 1`;vco[$j]="#0a5b5b";dco[$j]="3d8e8e:s0.4l-0.2"           #c3
j=`expr $j + 1`;vco[$j]="#1e7a7a";dco[$j]="3d8e8e:s0.2l-0.1"           #c4
j=`expr $j + 1`;vco[$j]="#3d8e8e";dco[$j]="brand-primary"              #c5
j=`expr $j + 1`;vco[$j]="#5bd6d6";dco[$j]="3d8e8e:s0.2l0.2"            #c6
j=`expr $j + 1`;vco[$j]="#b2e5e5";dco[$j]="3d8e8e:s0.1l0.4:brand-info" #c7
j=`expr $j + 1`;vco[$j]="#ff9900";dco[$j]="brand-warning"              #c8
j=`expr $j + 1`;vco[$j]="#ffff00";dco[$j]="yellow coin"                #c9
j=`expr $j + 1`;vco[$j]="#ffcccc";dco[$j]="rosa flor"                  #c10
j=`expr $j + 1`;vco[$j]="#669933";dco[$j]="brand-success"              #c11
j=`expr $j + 1`;vco[$j]="#e45353";dco[$j]="brand-danger"               #c12

j=`expr $j + 1`;vco[$j]="#42210b";dco[$j]="3f3f3f:h+0.067s+0.714l-0.096"
j=`expr $j + 1`;vco[$j]="#060708";dco[$j]="3f3f3f:h+0.583s+0.143l-0.220"
j=`expr $j + 1`;vco[$j]="#433e7e";dco[$j]="3f3f3f:h+0.680s+0.340l+0.122"

j=`expr $j + 1`;vco[$j]="#96c8eb";dco[$j]="3d8e8e:h+0.069s+0.281l+0.357"
j=`expr $j + 1`;vco[$j]="#98d4dc";dco[$j]="3d8e8e:h+0.020s+0.094l+0.331"
j=`expr $j + 1`;vco[$j]="#cceaee";dco[$j]="3d8e8e:h+0.020s+0.101l+0.469"
j=`expr $j + 1`;vco[$j]="#0929a8";dco[$j]="3d8e8e:h+0.133s+0.499l-0.051"
j=`expr $j + 1`;vco[$j]="#1f66e4";dco[$j]="3d8e8e:h+0.107s+0.386l+0.110"

j=`expr $j + 1`;vco[$j]="#e0321c";dco[$j]="ff9900:h-0.081s-0.222l-0.006"
j=`expr $j + 1`;vco[$j]="#e3b912";dco[$j]="ff9900:h+0.033s-0.147l-0.020"

j=`expr $j + 1`;vco[$j]="#ecdee3";dco[$j]="ffcccc:h+0.940s-0.731l-0.002"
j=`expr $j + 1`;vco[$j]="#fac2ce";dco[$j]="ffcccc:h+0.964s-0.152l-0.029"
j=`expr $j + 1`;vco[$j]="#f5859d";dco[$j]="ffcccc:h+0.964s-0.152l-0.159"

j=`expr $j + 1`;vco[$j]="#0e4626";dco[$j]="669933:h+0.155s+0.167l-0.235"

j=`expr $j + 1`;vco[$j]="#ff8a8a";dco[$j]="e45353:h+0.000s+0.271l+0.161"     
j=`expr $j + 1`;vco[$j]="#ff6666";dco[$j]="e45353:h+0.000s+0.271l+0.090"     
j=`expr $j + 1`;vco[$j]="#ff4c4c";dco[$j]="e45353:h+0.000s+0.271l+0.039"     
}

setschema()
{
r1="Color::RGB.from_html";r2="puts Color::HSL.from_fraction";rb="ruby -r color -e "
h=".to_hsl.h";s=".to_hsl.s";l=".to_hsl.l"

u="c=$r1('${aco[1]}')"
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.067,c$s+0.714,c$l-0.096).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.583,c$s+0.143,c$l-0.220).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.680,c$s+0.340,c$l+0.122).html"`

u="c=$r1('${aco[5]}')"
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.069,c$s+0.281,c$l+0.357).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.020,c$s+0.094,c$l+0.331).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.020,c$s+0.101,c$l+0.469).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.133,c$s+0.499,c$l-0.051).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.107,c$s+0.386,c$l+0.110).html"`

u="c=$r1('${aco[8]}')"
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h-0.081,c$s-0.222,c$l-0.006).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.033,c$s-0.147,c$l-0.020).html"`

u="c=$r1('${aco[10]}')"
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.940,c$s-0.731,c$l-0.002).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.964,c$s-0.152,c$l-0.029).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.964,c$s-0.152,c$l-0.159).html"`

u="c=$r1('${aco[11]}')"
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.155,c$s+0.167,c$l-0.235).html"`

u="c=$r1('${aco[12]}')"
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.000,c$s+0.271,c$l+0.161).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.000,c$s+0.271,c$l+0.090).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.000,c$s+0.271,c$l+0.039).html"`
}

setschemafrugas()
{
r1="Color::RGB.from_html";r2="puts Color::HSL.from_fraction";rb="ruby -r color -e "
h=".to_hsl.h";s=".to_hsl.s";l=".to_hsl.l"

u="c=$r1('$c_fruga')"
n=`expr $n - 2`;aco[$n]=`$rb"$u;$r2(c$h,c$s+0.4,c$l-0.2).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h,c$s+0.2,c$l-0.1).html"`
n=`expr $n + 1`;aco[$n]="$c_fruga"
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h,c$s+0.2,c$l+0.2).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h,c$s+0.1,c$l+0.4).html"`
}

getschema()
{
#u="$u;(o.round(2) == s.round(2)) ? '' : l+'%+.3f' % ((o-s))"
r1="Color::RGB.from_html"
r2="puts Color::HSL.from_fraction"
u=""
u="$u;def fz(o,s,l)"
u="$u;l+'%+.3f' % (o-s)"
u="$u;end"
u="$u;co=$r1('$1');cs=$r1('$2')"
u="$u;puts co.html+':'+cs.html+':j=\`expr \$j + 1\`;vco[\$j]=\"'"
u="$u+co.html+'\";dco[\$j]=\"'+cs.html[1,6]+':'"
u="$u+fz(co.to_hsl.h,cs.to_hsl.h,'h')"
u="$u+fz(co.to_hsl.s,cs.to_hsl.s,'s')"
u="$u+fz(co.to_hsl.l,cs.to_hsl.l,'l')+'\"'"
u="$u;puts co.html+':'+cs.html+':n=\`expr \$n + 1\`;aco[\$n]=\`\$rb\"\$u;\$r2('"
u="$u+'c$'+fz(co.to_hsl.h,cs.to_hsl.h,'h')+','"
u="$u+'c$'+fz(co.to_hsl.s,cs.to_hsl.s,'s')+','"
u="$u+'c$'+fz(co.to_hsl.l,cs.to_hsl.l,'l')+').html\"\`'"
ruby -r color -e "$u"
}

showcoldest()
{
getschema "#`echo $1|cut -d":" -f1`" "#`echo $1|cut -d":" -f2`"
}

arraypalette()
{
a="";n=1;rm -f grep$$
while [ $n -le $j ]
do p=`echo ${vco[$n]}|cut -c2-`
   a=",\"$p\"$a"
   echo $p >> grep$$
   n=`expr $n + 1`
done
a=`echo $a|cut -c2-`
}

similarsvgcolor()
{

k=`fgrep -i fill:# $1|fgrep -ivf grep$$|sed -e 's%.*fill:#\(......\).*%,"\1"%g'|sort -u`
k=`echo $k|cut -c2-|sed -e 's% %%g'`

#u="$u;(o.round(2) == s.round(2)) ? '' : l+'%.0f' % ((o*100)-(s*100))"
#u="$u;(o.round(2) == s.round(2)) ? '' : l+'o%.0f' % (o)+l+'s%.0f' % (s)"
#u="$u;(o.round(2) == s.round(2)) ? '' : l+'s%.2f' % (s)+l+'o%.2f' % (o)"
#u="$u;(o.round(2) == s.round(2)) ? '' : l+'%+.3f' % ((o-s))"
w="Paleta::Color.new(:hex"
z="Color::RGB.from_html("
u=""
u="$u;a=[$a]"
u="$u;k=[$k]"
u="$u;def sc(c,v)"
u="$u;b=v.map { |t| { k: t, sm: $w,t).similarity($w,c)) } }"
u="$u;r=b.reject { |t| t[:sm] > $m }"
u="$u;r.sort { |a,b| a[:sm] <=> b[:sm] }[0]"
u="$u;end"
u="$u;def fz(o,s,l)"
u="$u;l+'%+.3f' % (o-s)"
u="$u;end"
u="$u;f=k.map { |m| r=sc(m,a); { o: m, s: r ? r[:k] : nil, sm: r ? r[:sm] : nil } }"
u="$u;s=f.reject { |m| m[:sm].nil? }"
u="$u;n=f.reject { |m| !m[:sm].nil? }"
u="$u;s.sort! { |a,b| a[:sm] <=> b[:sm] }"
u="$u;s.each  { |m| co=${z}m[:o]);cs=${z}m[:s])"
u="$u;puts m[:o]+':'+m[:s]+'|'"
u="$u+fz(co.to_hsl.h,cs.to_hsl.h,'h')"
u="$u+fz(co.to_hsl.s,cs.to_hsl.s,'s')"
u="$u+fz(co.to_hsl.l,cs.to_hsl.l,'l')"
u="$u+'sm%.2f' % m[:sm]"
u="$u }"
u="$u;n.each  { |m| puts m[:o]+':'+'nao' }"
q=`ruby -r paleta -r color -e "$u"`
rs=""
rn=""
for u in $q
do if [ -z "`echo $u|fgrep nao`" ];then rs="$rs $u";else rn="$rn $u";fi
done
}

simreport()
{
arraypalette

echo "Similatiry report in $b"
for f in `ls $b`
do similarsvgcolor $b/$f
   echo "$f `echo $rs|wc -w` similar, `echo $rn|wc -w` unmatched colors"
done

echo "Similatiry report in $c"
for f in `ls $c`
do similarsvgcolor $c/$f
   echo "$f `echo $rs|wc -w` similar, `echo $rn|wc -w` unmatched colors"
done

rm -f grep$$
}

optsvgs()
{
echo "Optimize svgs in $b"
for f in `ls $b`
do ts=`date "+%Y%m%d%H%M%S"`
   echo "Processar $f backup saved in $i/s$ts-$f"
   cp $b/$f $i/s$ts-$f
   inkscape -l $b/$f $i/s$ts-$f
done

echo "Optimize svgs in $c"
for f in `ls $c`
do ts=`date "+%Y%m%d%H%M%S"`
   echo "Processar $f backup saved in $i/s$ts-$f"
   cp $c/$f $i/s$ts-$f
   inkscape -l $c/$f $i/s$ts-$f
done
}

matchscript()
{
arraypalette;similarsvgcolor $1;rm -f grep$$
for u in $rs
do u1=`echo $u|cut -d"|" -f1`
   showcoldest $u1
done|sort -t : -k 3.1,3.2 -k 2,2 -k 1,1
}

matchedlist()
{
arraypalette;similarsvgcolor $1;rm -f grep$$
for u in $rs
do u1=`echo $u|cut -d":" -f1`
   u2=`echo $u|cut -d":" -f2`
   u3=`fgrep -i "fill:#$u1" $1|wc -l`
   u4=`echo $u2|cut -d"|" -f1`
   u5=`echo $u2|cut -d"|" -f2`
   echo "<h1 style=\"background-color:#$u1;color:#$u4\">$u1:$u4:$u5:`printf '%03d' $u3`</h1>"
done
}

unmatchedlist()
{
arraypalette;similarsvgcolor $1;rm -f grep$$
for u in $rn
do u1=`echo $u|cut -d":" -f1`
   echo "<h1 style=\"background-color:#$u1;\">$u1</h1>"
done
}

simchange()
{
arraypalette;similarsvgcolor $1;rm -f grep$$
n=0
for u in $rs
do u1=`echo $u|cut -d":" -f1`
   u2=`echo $u|cut -d":" -f2|cut -c1-6`
   echo "s%fill:#$u1%fill:#$u2%g" >>sed$$
   n=`expr $n + 1`
done
if [ $n -gt 0 ]
then echo "$n altercoes de cor"
     bn=`basename $1`
     sed -f sed$$ $1 >$i/z$$-$bn
     cp $1 $i/s`date "+%Y%m%d%H%M%S"`-$bn
     mv $i/z$$-$bn $1
else echo "$n similar colors"
fi
echo "`echo $rn|wc -w` unmatched colors"
rm -f sed$$
}

simback()
{
bn=`basename $1`
u=`ls $i/s[0-9][0-9]*-$bn|cut -d"/" -f2|cut -c2-|sort -nr|head -1`
if [ -n "$u" ]
then echo "Recuprar $i/s$u para $1"
     cp $i/s$u $1
     rm $i/s$u
else echo "Nao existe recuperacao para $1 em $i"
fi
}

valcor()
{
# valida pedidos de alteracao de cores
# $1=cor pedida
# $2=arquivo cor
# $3=descretivo cor
if [ "$1" != "$2" ];then
 ta=1 #cor foi alterada
 if [ `echo -n "$1"|wc -m` -ne 7 ];then
  echo "$3 invalida tamanho<>7 $1"
  exit 1
 else
  rt="puts Color::RGB.from_html('$1')"
  vh=`ruby -r color -e "$rt.html"`
  if [ `echo -n "$vh"|wc -m` -ne 7 -o $vh != $1 ];then
   echo "$3 invalida SET=$1 RGB=$vh"
   exit 1
  fi
 fi
fi
}

valpal()
{
# validar other colors aco[01-02,05,08-14]
n=0
n=`expr $n + 1`;valcor ${aco[$n]} ${vco[$n]} ${dco[$n]}
n=`expr $n + 1`;valcor ${aco[$n]} ${vco[$n]} ${dco[$n]}
n=`expr $n + 3`;valcor $c_fruga   ${vco[$n]} ${dco[$n]};setschemafrugas
n=`expr $n + 1`;valcor ${aco[$n]} ${vco[$n]} ${dco[$n]}
n=`expr $n + 1`;valcor ${aco[$n]} ${vco[$n]} ${dco[$n]}
n=`expr $n + 1`;valcor ${aco[$n]} ${vco[$n]} ${dco[$n]}
n=`expr $n + 1`;valcor ${aco[$n]} ${vco[$n]} ${dco[$n]}
n=`expr $n + 1`;valcor ${aco[$n]} ${vco[$n]} ${dco[$n]}
# Obter schema cores calculadas
setschema
}

usage()
{
  cat << EO
Cria fruga brand logos & images
EO

  cat <<EO | column -s\& -t

  -h          & show this output
  -f          & show current fill   colors for all svgs
  -s          & show current stroke colors for all svgs
  -p          & show internal palette
  -r          & show similarity report
  -q          & show fruga.css.scss
  -opt        & [IMPORTANTE] optimize svgs - deve ser feito antes novos svgs
  -o des:ori  & show color des values obtained from color ori
  -l limit    & set limit for similarity (default $m)
  -c svg      & change similar  colors
  -m svg      & show matched    color list (html   format)
  -t svg      & show matched    color list (script format)
  -u svg      & show unmatched  color list 
  -b svg      & go back to last change similarity colors
  -c0   color & change $d0 to color
  -c1   color & change $d1 to color
  -cb   color & change schema c2-6 based on color
  -c7   color & change $d7 to color
  -c8   color & change $d8 to color
  -c9   color & change $d9 to color
  -e0   color & change $g0 to color
  -e1   color & change $g1 to color
  -e2   color & change $g2 to color
  -e3   color & change $g3 to color
  -f1-7 svg   & change brand svgs for frugas
  -l1-6 svg   & change brand svgs for compositions
  -t1   svg   & change brand svg  for tree
  -i1   svg   & change brand svg  for cesto compras
EO
}

showcolors()
{
# mostra cores actualmente nos svgs
echo
echo "Current colors in $b"
for f in `ls $b`
do ac=`grep -i "$1:#" $b/$f|sed -e "s%.*$1:#\(......\).*%\1%g"|sort -u`
   if [ -n "$ac" ];then echo $f $ac;fi
done
echo
echo "Current colors in $c"
for f in `ls $c`
do ac=`grep -i "$1:#" $c/$f|sed -e "s%.*$1:#\(......\).*%\1%g"|sort -u`
   if [ -n "$ac" ];then echo $f $ac;fi
done
}

showpalette()
{
valpal
n=1
while [ $n -le $j ]
do a="<h1 style=\"background-color:${vco[$n]};\">"
   echo "$a`printf '%03d' $n`-a${aco[$n]}:v${vco[$n]}:${dco[$n]}</h1>"
   if [ "${aco[$n]}" != "${vco[$n]}" ]
   then getschema "${vco[$n]}" "#`echo ${dco[$n]}|cut -d":" -f1`"
   fi
   n=`expr $n + 1`
done
}

showscss()
{
valpal

cat << EOF

/* valores nao alterado - so para calculos */
\$navbar-height: 50px;
\$font-size-base: 14px;

\$brand-primary: ${vco[5]};
\$brand-success: ${vco[11]};
\$brand-info:    ${vco[7]};
\$brand-warning: ${vco[8]};
\$brand-danger:  ${vco[12]};

/* all btn have #fff (white) text color these need darker */ 
\$btn-default-color: #3f3f3f;
\$btn-info-color: \$btn-default-color;

\$navbar-padding-vertical: ((\$navbar-height - floor((\$font-size-base * 2.2))) / 2);
\$navbar-default-link-hover-bg: \$brand-info;

\$blockquote-font-size: ceil((\$font-size-base * 0.9));
\$blockquote-border-color: \$brand-info;

\$headings-font-weight: bold;
\$font-family-sans-serif: "Ubuntu", sans-serif;
\$font-family-serif: "Arvo", serif;
\$font-family-monospace: "Ubuntu Mono", monospace;

@import "bootstrap";
EOF

}

proccolors()
{
# troca de cores nos svgs: proccolors ${aco[$n]} ${vco[$n]} ${dco[$n]}
if [ $1 != $2 -a -n "`echo $lb $lc|grep -i $2`" ];then 
 if [ -n "`echo $lb|grep -i $2`" -a -z "`echo $lb|grep -i $1`" ];then
  echo "processar $b/*.svg for $3=$2 CHANGED to $1"
  for f in `ls $b`
  do lf=`grep -i fill:# $b/$f|sed -e 's%.*fill:\(#......\).*%\1%g'|sort -u`
     if [ -n "`echo $lf|grep -i $2`" -a -z "`echo $lf|grep -i $1`" ];then
       echo "$b/$f    ALTERADO";fc=`expr $fc + 1`
       sed -e "s%fill:$2%fill:$1%g" $b/$f >$b/z$f;mv $b/$f $i;mv $b/z$f $b/$f
     else if [ -n "`echo $lf|grep -i $1`" ];then
            echo "$b/$f NAOALTERADO alredy has $1"
          fi
     fi
  done
 else if [ -n "`echo $lb|grep -i $1`" ];then
        echo "$b/*.svg nao processados for $3 alredy have $1"
      fi
 fi
 if [ -n "`echo $lc|grep -i $2`" -a -z "`echo $lc|grep -i $1`" ];then
  echo "processar $c/*.svg for $3=$2 CHANGED to $1"
  for f in `ls $c`
  do lf=`grep -i fill:# $c/$f|sed -e 's%.*fill:\(#......\).*%\1%g'|sort -u`
     if [ -n "`echo $lf|grep -i $2`" -a -z "`echo $lf|grep -i $1`" ];then
       echo "$c/$f    ALTERADO";fc=`expr $fc + 1`
       sed -e "s%fill:$2%fill:$1%g" $c/$f >$c/z$f;mv $c/$f $i;mv $c/z$f $c/$f
     else if [ -n "`echo $lf|grep -i $1`" ];then
            echo "$c/$f NAOALTERADO alredy has $1"
          fi
     fi
  done
 else if [ -n "`echo $lc|grep -i $1`" ];then
        echo "$c/*.svg nao processados for $3 alredy have $1"
      fi
 fi
fi
}

# default logos & compositions
f1=fc # fruga.big-tree-sun-grass
f2=fa # fruga.big-cosiz-3cor
f3=fb # fruga.sma-cosiz-3cor
f4=fe # fruga.big      -1cor
f5=ff # fruga.sma      -1cor-favicon-16x16
f6=fg # fruga.big-cotrp-2cor
f7=fh # fruga.sma-cotrp-2cor
f8=fi # fruga.big-ranhu-1cor
f9=fj # fruga.sma-ranhu-1cor

l1=cg # logo1 main                 0143x0059
l2=ch # fruga.big-tree1-sun-www-l1 0660x0150
l3=cl # trace1-ci                  2120x1192
l4=cm # bdoar1                     0073x0026
l5=cn # bdoar2                     0080x0064

t1=ta # tree1-amendoeira
t2=tb # tree2-small-flowers
i1=ea # cesto-compras

# operation dirs
b=base
i=svg
o=png
c=comp
t=tmp

# output dirs for apps (mercado e comunidade)
z=/home/hernani/Documents/as3w/mfpt
x=/home/hernani/Documents/as3w/cfpt

# obter cores actuais nos svgs para processar alteracao
# aco[03-07] calculadas a partir de c_fruga
# aco[15-23] calculadas a partir de vco[10] rosa
# aco[24-27] calculadas a partir de vco[09] yellow
# aco[28-29] calculadas a partir de vco[11] green
currentsvgcolors
c_fruga=${vco[5]}
aco[1]=${vco[1]}
aco[2]=${vco[2]}
aco[8]=${vco[8]}
aco[9]=${vco[9]}
aco[10]=${vco[10]}
aco[11]=${vco[11]}
aco[12]=${vco[12]}
aco[13]=${vco[13]}
aco[14]=${vco[14]}
# teste pedidos alteracao de cor
ta=0
as=adjust_saturation
ab=adjust_brightness
# valor max em que uma cor e considereda similar
m="0.1"

SOPTS="hfsprqo:l:c:m:t:u:b:"
LOPT1="f1:,f2:,f3:,f4:,f5:,f6:,f7:,f8:,f9:"
LOPT2="l1:,l2:,l3:,l4:,l5:"
LOPT3="t1:,i1:"
LOPT4="c0:,c1:,cb:,c7:,c8:,c9:,e0:,e1:,e2:,e3:"
LOPTS="opt,$LOPT1,$LOPT2,$LOPT3,$LOPT4"

ARGS=$(getopt -a -o $SOPTS -l $LOPTS --name $PROGNAME -- "$@")

eval set -- "$ARGS"

while true; do
    case $1 in
    -h)   usage            ; exit 0;;
    -f)   showcolors fill  ; exit 0;;
    -s)   showcolors stroke; exit 0;;
    -p)   showpalette      ; exit 0;;
    -r)   simreport        ; exit 0;;
    -q)   showscss         ; exit 0;;
    -o)   showcoldest $2   ; exit 0;;
    -l)   m=$2             ; shift;;
    -c)   simchange $2     ; exit 0;;
    -m)   matchedlist $2   ; exit 0;;
    -t)   matchscript $2   ; exit 0;;
    -u)   unmatchedlist $2 ; exit 0;;
    -b)   simback $2       ; exit 0;;
   --opt) optsvgs          ; exit 0;;
    --c0) aco[1] ="#$2"; shift;;
    --c1) aco[2] ="#$2"; shift;;
    --cb) c_fruga="#$2"; shift;;
    --c7) aco[8] ="#$2"; shift;;
    --c8) aco[9] ="#$2"; shift;;
    --c9) aco[10]="#$2"; shift;;
    --e0) aco[11]="#$2"; shift;;
    --e1) aco[12]="#$2"; shift;;
    --e2) aco[13]="#$2"; shift;;
    --e3) aco[14]="#$2"; shift;;

    --f1) f1=$2; shift;;
    --f2) f2=$2; shift;;
    --f3) f3=$2; shift;;
    --f4) f4=$2; shift;;
    --f5) f5=$2; shift;;
    --f6) f6=$2; shift;;
    --f7) f7=$2; shift;;
    --f8) f8=$2; shift;;
    --f9) f9=$2; shift;;

    --l1) l1=$2; shift;;
    --l2) l2=$2; shift;;
    --l3) l3=$2; shift;;
    --l4) l4=$2; shift;;
    --l5) l5=$2; shift;;

    --t1) t1=$2; shift;;
    --i1) i1=$2; shift;;
    --)  shift; break;;
    *)   shift; break;;
    esac
    shift
done

# validar pelette cores
valpal

# valcor verificou validade e pedidos de alteracao de cores
# se houve pedido de alteraco de cores os svg sao processados
if [ $ta -eq 1 ]
then 

# listas globais nos svg base, comp
lb=`grep -i fill:# $b/*.svg|sed -e 's%.*fill:\(#......\).*%\1%g'|sort -u`
lc=`grep -i fill:# $c/*.svg|sed -e 's%.*fill:\(#......\).*%\1%g'|sort -u`

# processamento de cores novas nos svgs
fc=0
n=1
while [ $n -le $j ]
do proccolors ${aco[$n]} ${vco[$n]} ${dco[$n]};n=`expr $n + 1`
done

if [ $fc -gt 0 ]
then echo "[IMPORTANTE] Altere variaveis em currentsvgcolors com cores alteradas"
else echo "Foi pedida uma alteracao de schema de cores mas nenhuma alteracao foi necessaria"
fi
     
fi

echo "Basic color palette for fruga"
r1="puts Color::RGB.from_html('$c_fruga')"
echo "`ruby -r color -e \"$r1.css_hsl\"`;`ruby -r color -e \"$r1.css_rgb\"`"
# Diaspora pod needs apple-touch-icon.png,icon_128.gif,favicon.ico
rsvg-convert -h 16  -a -f png $b/$f5.svg -o $o/$f1-0016.png
rsvg-convert -h 32  -a -f png $b/$f3.svg -o $o/$f1-0032.png
rsvg-convert -h 48  -a -f png $b/$f3.svg -o $o/$f1-0048.png
rsvg-convert -h 64  -a -f png $b/$f3.svg -o $o/$f1-0064.png
rsvg-convert -h 75  -a -f png $b/$f3.svg -o $o/$f1-0075.png # facebook app needs this
rsvg-convert -h 128 -a -f png $b/$f1.svg -o $o/$f1-0128.png
rsvg-convert -h 180 -a -f png $b/$f5.svg -o $o/$f1-0180.png # facebook profile needs this
rsvg-convert -h 256 -a -f png $b/$f1.svg -o $o/$f1-0256.png
rsvg-convert -h 256 -a -f png $b/$f4.svg -o $o/$f4-0256.png 
rsvg-convert -h 1024 -a -f png $b/$f6.svg -o $o/$f6-1024.png 
convert -background ${aco[7]}  $b/$f1.svg -thumbnail 200x200 $o/apple-touch-icon.png
convert -background none $b/$f1.svg -thumbnail 128x128 $o/icon_128.gif
convert $o/$f1-0016.png $o/$f1-0032.png $o/$f1-0048.png \
        $o/$f1-0064.png $o/$f1-0128.png $o/$f1-0256.png \
        $o/favicon.ico

# Logos redes sociais x32
rsvg-convert -h 24 -a -f png $c/sf.svg -o $o/sf.png
rsvg-convert -h 24 -a -f png $c/sg.svg -o $o/sg.png
rsvg-convert -h 24 -a -f png $c/sl.svg -o $o/sl.png
rsvg-convert -h 24 -a -f png $c/st.svg -o $o/st.png
rsvg-convert -h 24 -a -f png $c/sy.svg -o $o/sy.png

# Composição google+,places,blog x200
rsvg-convert -h 200 -a     -f png $c/$l1.svg -o $o/$l1-gp.png

# Composição google+,paginas, min(480x270)
rsvg-convert -w 480 -h 270 -f png $c/$l1.svg -o $o/$l1-gpp.png

# Composição google Enterprise 143x59 
rsvg-convert                -f png $c/$l1.svg -o $o/$l1-ge.png

# Composicao google-api-logo  max120x60
rsvg-convert -w 120 -h 60   -f png $c/$l1.svg -o $o/$l1-ga.png

# Composicoes facebook 
#  capa-min720x 
#  banners f1=155x100 f2=800x150 opcionais f2=180x115 f4=394x150 
rsvg-convert -w 722 -a      -f png $c/$l1.svg -o $o/$l1-fb.png

# Composicao twitter capa-1252x626 fundo-1000
rsvg-convert -w 1252 -h 626 -f png $c/$l1.svg -o $o/$l1-tw.png
rsvg-convert -w 1000 -a     -f png $b/$t1.svg -o $o/$t1-tw.png

# Composicao flickr-api-logo 300x90 max600x300
convert -background none $c/$l2.svg -thumbnail 396x90 $o/$l2-fl.gif

# Composicao youtube channel 
#tv      2120x1192
#desktop 2120x350
#tablet  1536x350
#mobile  1280x350
rsvg-convert               -f png $c/$l3.svg -o $t/$l3-yt.png
convert $t/$l3-yt.png -quality 96 $o/$l3-yt.jpg

# Composicao mercado used by spree 176x82  
rsvg-convert -a -h 82  -f png $c/$l1.svg -o $o/mfpt-logo.png
rsvg-convert -a -h 40  -f png $c/$l1.svg -o $o/mfpt-logo-admin.png
rsvg-convert -a -h 82  -f svg $c/$l1.svg -o $t/mfpt-logo.svg
rsvg-convert -a -h 40  -f svg $c/$l1.svg -o $t/mfpt-logo-admin.svg
./css.rb $t/mfpt-logo.svg       > $i/mfpt-logo.svg
./css.rb $t/mfpt-logo-admin.svg > $i/mfpt-logo-admin.svg

# Composicao logo comunidade navbar tem x50 
# com estes -h da x46 em ambos png,svg
rsvg-convert -a -h 46  -f png $c/$l1.svg -o $o/cfpt-logo.png
rsvg-convert -a -h 37  -f svg $c/$l1.svg -o $t/cfpt-logo.svg
./css.rb $t/cfpt-logo.svg       > $i/cfpt-logo.svg

rsvg-convert -a     -h 240 -f png $b/$f1.svg -o $t/$f1-pr.png
./preplet.sh imagem la t240 h120 ${aco[7]}
./preplet.sh "não existe" la t240 h120 ${aco[7]}
convert $o/panão_existe.png $o/paimagem.png \
	-gravity center -append $t/pr.png
composite -dissolve 25% -gravity center \
        $t/$f1-pr.png  $t/pr.png $o/product.png 
composite -dissolve 25% -gravity center \
        $t/$f1-pr.png  $t/pr.png $o/large.png 

rsvg-convert -a     -h 100 -f png $b/$f1.svg -o $t/$f1-pr.png
./preplet.sh imagem la t100 h50 ${aco[7]}
./preplet.sh "não existe" la t100 h50 ${aco[7]}
convert $o/panão_existe.png $o/paimagem.png \
	-gravity center -append $t/pr.png
composite -dissolve 25% -gravity center \
        $t/$f1-pr.png  $t/pr.png $o/small.png 

rsvg-convert -a     -h 48  -f png $b/$f1.svg -o $t/$f1-pr.png
./preplet.sh imagem la t48 h24 ${aco[7]}
./preplet.sh "não existe" la t48 h24 ${aco[7]}
convert $o/panão_existe.png $o/paimagem.png \
	-gravity center -append $t/pr.png
composite -dissolve 25% -gravity center \
        $t/$f1-pr.png  $t/pr.png $o/mini.png 

rm $o/paimagem.png $o/panão_existe.png
rsvg-convert               -f png $b/$i1.svg -o $o/cart.png

# Composicao blog x200
#rsvg-convert -h 200 -a     -f png $c/$l2.svg -o $t/$l2-bl.png
#convert $t/$l2-bl.png -background white -flatten $o/bg1.jpg

# Composicao botoes doar fruga 80x64, paypal 73x26 
rsvg-convert               -f png $c/$l4.svg -o $o/$l4-doar.png
rsvg-convert               -f png $c/$l5.svg -o $o/$l5-doar.png

exit
#Antigos comandos de manipulacao imagens
#inkscape -z -a01:01:0076:0076 -e$o/$f1-0075.png $i/${f1}0075.svg
#inkscape -z -a05:00:0095:0115 -e$o/$f1-0115.png $i/${f1}0115.svg
#inkscape -z -a02:02:0258:0258 -e$o/$f1-0256.png $i/${f1}0256.svg

# Other places
#rsvg-convert -h 75  -a -f png $b/$f1.svg -o $o/${f1}0075.png
#rsvg-convert -h 115 -a -f png $b/$f1.svg -o $o/${f1}0115.png
#rsvg-convert -h 150 -a -f png $b/$f1.svg -o $o/${f1}01501.png
#rsvg-convert -h 120 -a -f png $b/$f1.svg -o $o/${f1}01502.png
#rsvg-convert -h 120 -a -f png $b/$f1.svg -o $o/${f1}01503.png
inkscape -z -a00:00:0500:0500 -e$o/$f1-0500.png $i/${f1}0500.svg
inkscape -z -a00:00:1280:1280 -e$o/$f1-1280.png $i/${f1}1280.svg
inkscape -z -a00:00:2048:2048 -e$o/$f1-2048.png $i/${f1}2048.svg
inkscape -z -a00:00:0048:0048 -e$o/$f1-icon.png $i/${f1}0048.svg

# Facebook Banners f1=155x100 f2=180x115 f3=800x150 f4=394x150 
inkscape -z -a00:00:0155:0050 -e$o/$l1$o1-f1.png  $i/$l1${o1}1.svg
inkscape -z -a00:00:0155:0050 -e$o/$l1$o2-f1.png  $i/$l1${o2}1.svg
inkscape -z -a00:01:0180:0060 -e$o/$l1$o1-f2.png  $i/$l1${o1}2.svg
inkscape -z -a00:00:0180:0056 -e$o/$l1$o2-f2.png  $i/$l1${o2}2.svg
inkscape -z                   -e$o/$l1$o1-f3.png  $i/$l1${o1}3.svg
inkscape -z                   -e$o/$l1$o2-f3.png  $i/$l1${o2}3.svg
inkscape -z -a00:00:0150:0054 -e$o/$l1$o3-f3.png  $i/$l1${o3}3.svg
inkscape -z                   -e$o/$f1-01501.png  $i/${f1}01501.svg
inkscape -z                   -e$o/$f1-01502.png  $i/${f1}01502.svg
inkscape -z -a04:00:0150:0150 -e$o/$f1-01503.png  $i/${f1}01503.svg
inkscape -z -a06:01:0267:0088 -e$o/$l1$o1-f4.png  $i/$l1${o1}4.svg
inkscape -z -a00:00:0261:0063 -e$o/$l1$o2-f4.png  $i/$l1${o2}4.svg
convert $o/$l1[$o1$o2]-f1.png -gravity East -append $o/$l1-f1.png
convert $o/$l1[$o1$o2]-f2.png -gravity East -append $o/$l1-f2.png
convert $o/$l1[$o1$o2]-f3.png -gravity East -append $o/$l1-f3.png
convert $o/$l1$o3-f3.png -rotate -90        $o/$f1-01503t.png 
convert $o/$f1-01503.png -flip -rotate -180 $o/$l1$o3-f3r.png 
convert $o/$l1-f3.png $o/$f1-01503t.png \
        $o/$f1-01501.png \
        $o/$l1$o3-f3r.png \
        $o/$f1-01502.png \
        -gravity South +append $o/f1-ff3.png
exit
convert ${th}-l[ab]f3.png  -gravity South +append ${th}-ltf3.png
convert ${th}-l[ab]f4.png  -gravity East -append ${th}-ltf4.png
convert ${th}-150.png ${th}-ltf4.png -gravity South +append ${th}-ff4.png

# tumblr.com
rsvg-convert -h 100 -a     -f svg svg/${la}.svg -o svg/la7.svg
rsvg-convert -h 100 -a     -f svg svg/${lb}.svg -o svg/lb7.svg
inkscape -z -a0:00:400:125 -e${th}-latr.png svg/la7.svg
inkscape -z -a0:08:375:125 -e${th}-lbtr.png svg/lb7.svg
convert ${th}-l[ab]tr.png -gravity South -background none +append ${th}-lttr.png

# Google+ & places needs bigger
rsvg-convert -w 254 -h 170 -f svg svg/${la}.svg -o svg/la8.svg
rsvg-convert -w 250 -a     -f svg svg/${lb}.svg -o svg/lb8.svg
inkscape -z -a0:5:473:100  -e${th}-lbg+.png svg/lb8.svg
inkscape -z -a8:5:317:213  -e${th}-lapl.png svg/la8.svg
inkscape -z -a0:0:309:090  -e${th}-lbpl.png svg/lb8.svg
#inkscape -z  311:104      -e${th}-lbpl.png svg/lb8.svg
convert ${th}-l[ab]pl.png  -gravity West -background none -append ${th}-ltpl.png

# Google business recomended size for logo 143x59
rsvg-convert -h 36 -w 118  -f svg svg/${la}.svg -o svg/la9.svg
rsvg-convert -h 18 -w 116  -f svg svg/${lb}.svg -o svg/lb9.svg
inkscape -z -a3:1:146:042  -e${th}-labs.png  svg/la9.svg
inkscape -z -a0:2:142:020  -e${th}-lbbs.png  svg/lb9.svg
convert ${th}-l[ab]bs.png  -gravity East -background none -append ${th}-ltbs.png

exit
convert -size 800x200 xc:$c1 -font $ft -gravity center \
	-pointsize 100 -stroke $c2 -strokewidth 10 \
	-annotate +15+100 "$f1" -blur 0x7 -fill white -stroke none \
	-annotate +15+100 "$f1" \
	${ba}-name-base.png
convert ${ba}-name-base.png -alpha set -virtual-pixel transparent \
        -channel A -blur 0x8  -level 50%,80% +channel ${th}-name-big.png
convert ${ba}-name-base.png -alpha set -virtual-pixel transparent \
        -channel A -blur 0x8  -level 50%,80% +channel ${th}-name.png
convert ${ba}-name-base.png \
      -format 'roundrectangle 1,1 %[fx:w+4],%[fx:h+4] 20,20' \
      -write info:tmp.mvg \
      -matte -bordercolor none -border 3 \
      \( +clone -alpha transparent -background none \
         -fill white -stroke none -strokewidth 0 -draw @tmp.mvg \) \
      -compose DstIn -composite \
      \( +clone -alpha transparent -background none \
         -fill none -stroke black -strokewidth 4 -draw @tmp.mvg \
         -fill none -stroke white -strokewidth 0 -draw @tmp.mvg \) \
      -compose Over -composite ${th}-name-border.png
rm -f tmp.mvg      # Cleanup of temporary file
rm ${ba}-name-base.png

# Transparents using Fruga's base green #99bd91
convert $1 -thumbnail 600x600 -bordercolor '#99bd91' -border 1x1 \
          -alpha set -channel RGBA -fuzz 9% \
          -fill none -floodfill +0+0 '#99bd91' \
          -shave 1x1  ${th}-trans.png
convert $1 -thumbnail 143x59 -bordercolor '#99bd91' -border 1x1 \
          -alpha set -channel RGBA -fuzz 9% \
          -fill none -floodfill +0+0 '#99bd91' \
          -shave 1x1  ${th}-goole.png
convert ${th}-trans.png \( +clone \
              -channel A -blur 0x2.5 -level 0,50% +channel \
              +level-colors red \
            \) -compose DstOver -composite ${th}-halo.png
convert $1 -thumbnail 600x600 -alpha set -virtual-pixel transparent \
          -channel A -blur 0x8  -level 50%,100% +channel ${th}-edge.png

# Blur border
convert $1 -thumbnail 600x600 -fill gray50 -colorize 100% \
          -raise 8 -normalize -blur 0x8  bubble_overlay.png
convert $1 -thumbnail 600x600 bubble_overlay.png \
          -compose hardlight -composite  ${th}-blur.png
rm bubble_overlay.png

# Round border
convert $1 -thumbnail 600x600 \
      -format 'roundrectangle 1,1 %[fx:w+4],%[fx:h+4] 55,55' \
      -write info:tmp.mvg \
      -matte -bordercolor none -border 3 \
      \( +clone -alpha transparent -background none \
         -fill white -stroke none -strokewidth 0 -draw @tmp.mvg \) \
      -compose DstIn -composite \
      \( +clone -alpha transparent -background none \
         -fill none -stroke black -strokewidth 9 -draw @tmp.mvg \
         -fill none -stroke white -strokewidth 1 -draw @tmp.mvg \) \
      -compose Over -composite ${th}-big.png
rm -f tmp.mvg      # Cleanup of temporary file

convert ${th}-big.png -thumbnail 40x40 -unsharp 0x.5 ${th}-small.png
convert ${th}-halo.png \
          \( -clone 0 -resize 16x16 \) \
          \( -clone 0 -resize 32x32 \) \
          \( -clone 0 -resize 48x48 \) \
          \( -clone 0 -resize 64x64 \) \
          \( -clone 0 -resize 128x128 \) \
          \( -clone 0 -resize 256x256 \) \
          -delete 0 favicon.ico

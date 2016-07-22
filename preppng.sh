#!/bin/bash

PROGNAME=${0##*/}

currentsvgcolors()
{
#####  Color Palette fruga base by Paletton.com
#####  Palette URL: http://paletton.com/#uid=73i0u0kigtH8mN1d-B5mepEq0ld
#   c03 = #3D8E8E = rgb( 61,142,142) = rgba( 61,142,142,1) = rgb0(0.239,0.557,0.557) primary    color: brand-primary
#   c04 = #EDA366 = rgb(237,163,102) = rgba(237,163,102,1) = rgb0(0.929,0.639,0.4)   complement color: brand-warning:browns
#   c05 = #4E669F = rgb( 78,102,159) = rgba( 78,102,159,1) = rgb0(0.306,0.4,0.624)   secondary  color: brand-info:blues:30º
#   c06 = #EDC066 = rgb(237,192,102) = rgba(237,192,102,1) = rgb0(0.929,0.753,0.4)   secondary  color: yellows 30º
#   c07 = #ED6666 = rgb(237,102,102) = rgba(237,102,102,1) = rgb0(0.929,0.4,0.4)     secondary  color: brand-danger:reds:150º
#   c08 = #51BD51 = rgb( 81,189, 81) = rgba( 81,189, 81,1) = rgb0(0.318,0.741,0.318) secondary  color: brand-success:greens:150º

#   c09 = #9CD2D2 = rgb(156,210,210) = rgba(156,210,210,1) = rgb0(0.612,0.824,0.824)
#   c10 = #63ACAC = rgb( 99,172,172) = rgba( 99,172,172,1) = rgb0(0.388,0.675,0.675)
#   c11 = #257B7B = rgb( 37,123,123) = rgba( 37,123,123,1) = rgb0(0.145,0.482,0.482)
#   c12 = #136565 = rgb( 19,101,101) = rgba( 19,101,101,1) = rgb0(0.075,0.396,0.396)

#   c13 = #FFDBBD = rgb(255,219,189) = rgba(255,219,189,1) = rgb0(1,0.859,0.741)
#   c14 = #FFC493 = rgb(255,196,147) = rgba(255,196,147,1) = rgb0(1,0.769,0.576)
#   c15 = #CC7F3E = rgb(204,127, 62) = rgba(204,127, 62,1) = rgb0(0.8,0.498,0.243)
#   c16 = #A95E20 = rgb(169, 94, 32) = rgba(169, 94, 32,1) = rgb0(0.663,0.369,0.125)

#   c17 = #A7B7DA = rgb(167,183,218) = rgba(167,183,218,1) = rgb0(0.655,0.718,0.855)
#   c18 = #7489BB = rgb(116,137,187) = rgba(116,137,187,1) = rgb0(0.455,0.537,0.733)
#   c19 = #344E89 = rgb( 52, 78,137) = rgba( 52, 78,137,1) = rgb0(0.204,0.306,0.537)
#   c20 = #1F3871 = rgb( 31, 56,113) = rgba( 31, 56,113,1) = rgb0(0.122,0.22,0.443)

#   c21 = #FFE9BD = rgb(255,233,189) = rgba(255,233,189,1) = rgb0(1,0.914,0.741)
#   c22 = #FFDB93 = rgb(255,219,147) = rgba(255,219,147,1) = rgb0(1,0.859,0.576)
#   c23 = #CC9D3E = rgb(204,157, 62) = rgba(204,157, 62,1) = rgb0(0.8,0.616,0.243)
#   c24 = #A97B20 = rgb(169,123, 32) = rgba(169,123, 32,1) = rgb0(0.663,0.482,0.125)

#   c25 = #FFBDBD = rgb(255,189,189) = rgba(255,189,189,1) = rgb0(1,0.741,0.741)
#   c26 = #FF9393 = rgb(255,147,147) = rgba(255,147,147,1) = rgb0(1,0.576,0.576)
#   c27 = #CC3E3E = rgb(204, 62, 62) = rgba(204, 62, 62,1) = rgb0(0.8,0.243,0.243)
#   c28 = #A92020 = rgb(169, 32, 32) = rgba(169, 32, 32,1) = rgb0(0.663,0.125,0.125)

#   c29 = #ACE9AC = rgb(172,233,172) = rgba(172,233,172,1) = rgb0(0.675,0.914,0.675)
#   c30 = #7BD67B = rgb(123,214,123) = rgba(123,214,123,1) = rgb0(0.482,0.839,0.482)
#   c31 = #32A432 = rgb( 50,164, 50) = rgba( 50,164, 50,1) = rgb0(0.196,0.643,0.196)
#   c32 = #198719 = rgb( 25,135, 25) = rgba( 25,135, 25,1) = rgb0(0.098,0.529,0.098)
#
# [IMPORTANTE] Altere manualmente after -[ce]? para mudar svgs
# [IMPORTANTE] All svg's have to be passed throught:
#              inkscape -l new.svg old.svg (inkscape svg format)
#              the inkscape svg format is necessary for this script
#              the fill:<color> format is used in this script
#              optionaly you can save as plain svg (inkscape gui)

# palette fruga total (USADO EM TODO SCRIPT)
j=0 
j=`expr $j + 1`;vco[$j]="#3f3f3f";dco[$j]="cinza"                        #c01
j=`expr $j + 1`;vco[$j]="#f7f7f7";dco[$j]="white"                        #c02
j=`expr $j + 1`;vco[$j]="#3d8e8e";dco[$j]="brand-primary"                #c03
j=`expr $j + 1`;vco[$j]="#eda366";dco[$j]="brand-warning"                #c04
j=`expr $j + 1`;vco[$j]="#4e669f";dco[$j]="brand-info"                   #c05
j=`expr $j + 1`;vco[$j]="#edc066";dco[$j]="yellow coin"                  #c06
j=`expr $j + 1`;vco[$j]="#ed6666";dco[$j]="brand-danger"                 #c07
j=`expr $j + 1`;vco[$j]="#51bd51";dco[$j]="brand-success"                #c08

j=`expr $j + 1`;vco[$j]="#9cd2d2";dco[$j]="3d8e8e:h+0.000s-0.024l+0.320" #c09
j=`expr $j + 1`;vco[$j]="#63acac";dco[$j]="3d8e8e:h+0.000s-0.094l+0.133" #c10
j=`expr $j + 1`;vco[$j]="#257b7b";dco[$j]="3d8e8e:h+0.000s+0.138l-0.084" #c11
j=`expr $j + 1`;vco[$j]="#136565";dco[$j]="3d8e8e:h+0.000s+0.284l-0.163" #c12

j=`expr $j + 1`;vco[$j]="#ffdbbd";dco[$j]="eda366:h+0.000s+0.211l+0.206" #c13
j=`expr $j + 1`;vco[$j]="#ffc493";dco[$j]="eda366:h+0.000s+0.211l+0.124" #c14
j=`expr $j + 1`;vco[$j]="#cc7f3e";dco[$j]="eda366:h+0.001s-0.208l-0.143" #c15
j=`expr $j + 1`;vco[$j]="#a95e20";dco[$j]="eda366:h+0.000s-0.108l-0.271" #c16

j=`expr $j + 1`;vco[$j]="#a7b7da";dco[$j]="4e669f:h-0.003s+0.066l+0.290" #c17
j=`expr $j + 1`;vco[$j]="#7489bb";dco[$j]="4e669f:h+0.000s+0.001l+0.129" #c18
j=`expr $j + 1`;vco[$j]="#344e89";dco[$j]="4e669f:h-0.002s+0.108l-0.094" #c19
j=`expr $j + 1`;vco[$j]="#1f3871";dco[$j]="4e669f:h-0.001s+0.228l-0.182" #c20

j=`expr $j + 1`;vco[$j]="#ffe9bd";dco[$j]="edc066:h-0.000s+0.211l+0.206" #c21
j=`expr $j + 1`;vco[$j]="#ffdb93";dco[$j]="edc066:h+0.000s+0.211l+0.124" #c22
j=`expr $j + 1`;vco[$j]="#cc9d3e";dco[$j]="edc066:h+0.000s-0.208l-0.143" #c23
j=`expr $j + 1`;vco[$j]="#a97b20";dco[$j]="edc066:h-0.000s-0.108l-0.271" #c24

j=`expr $j + 1`;vco[$j]="#ffbdbd";dco[$j]="ed6666:h+0.000s+0.211l+0.206" #c25
j=`expr $j + 1`;vco[$j]="#ff9393";dco[$j]="ed6666:h+0.000s+0.211l+0.124" #c26
j=`expr $j + 1`;vco[$j]="#cc3e3e";dco[$j]="ed6666:h+0.000s-0.208l-0.143" #c27
j=`expr $j + 1`;vco[$j]="#a92020";dco[$j]="ed6666:h+0.000s-0.108l-0.271" #c28

j=`expr $j + 1`;vco[$j]="#ace9ac";dco[$j]="51bd51:h+0.000s+0.131l+0.265" #c29
j=`expr $j + 1`;vco[$j]="#7bd67b";dco[$j]="51bd51:h+0.000s+0.076l+0.131" #c30
j=`expr $j + 1`;vco[$j]="#32a432";dco[$j]="51bd51:h+0.000s+0.083l-0.110" #c31
j=`expr $j + 1`;vco[$j]="#198719";dco[$j]="51bd51:h+0.000s+0.237l-0.216" #c32

}

setschema()
{
r1="Color::RGB.from_html";r2="puts Color::HSL.from_fraction";rb="ruby -r color -e "
h=".to_hsl.h";s=".to_hsl.s";l=".to_hsl.l"

}

setschemafrugas()
{
r1="Color::RGB.from_html";r2="puts Color::HSL.from_fraction";rb="ruby -r color -e "
h=".to_hsl.h";s=".to_hsl.s";l=".to_hsl.l"

u="c=$r1('$c_fruga')"
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.000,c$s-0.024,c$l+0.320).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.000,c$s-0.094,c$l+0.133).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.000,c$s+0.138,c$l-0.084).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.000,c$s+0.284,c$l-0.163).html"`
u="c=$r1('${aco[4]}')"
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.000,c$s+0.211,c$l+0.206).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.000,c$s+0.211,c$l+0.124).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.001,c$s-0.208,c$l-0.143).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.000,c$s-0.108,c$l-0.271).html"`
u="c=$r1('${aco[5]}')"
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h-0.003,c$s+0.066,c$l+0.290).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.000,c$s+0.001,c$l+0.129).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h-0.002,c$s+0.108,c$l-0.094).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h-0.001,c$s+0.228,c$l-0.182).html"`
u="c=$r1('${aco[6]}')"
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h-0.000,c$s+0.211,c$l+0.206).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.000,c$s+0.211,c$l+0.124).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.000,c$s-0.208,c$l-0.143).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h-0.000,c$s-0.108,c$l-0.271).html"`
u="c=$r1('${aco[7]}')"
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.000,c$s+0.211,c$l+0.206).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.000,c$s+0.211,c$l+0.124).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.000,c$s-0.208,c$l-0.143).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.000,c$s-0.108,c$l-0.271).html"`
u="c=$r1('${aco[8]}')"
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.000,c$s+0.131,c$l+0.265).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.000,c$s+0.076,c$l+0.131).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.000,c$s+0.083,c$l-0.110).html"`
n=`expr $n + 1`;aco[$n]=`$rb"$u;$r2(c$h+0.000,c$s+0.237,c$l-0.216).html"`

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

k=`fgrep -i fill:# $1|sed -e 's%.*fill:#\(......\).*%,"\1"%g'|fgrep -ivf grep$$|sort -u`
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
u="$u;r=b.reject { |t| t[:sm] > $y }"
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
q=`ruby -r color -r rmagick -r paleta -e "$u"`
rs=""
rn=""
for u in $q
do if [ -z "`echo $u|fgrep nao`" ];then rs="$rs $u";else rn="$rn $u";fi
done
}

simreport()
{
arraypalette

for f in `ls $b/*.svg`
do similarsvgcolor $f
   echo "$f `echo $rs|wc -w` similar, `echo $rn|wc -w` unmatched colors"
done

for f in `ls $c/*.svg`
do similarsvgcolor $f
   echo "$f `echo $rs|wc -w` similar, `echo $rn|wc -w` unmatched colors"
done

rm -f grep$$
}

optsvgs()
{
echo "Optimize svgs in $b"
for f in `ls $b`
do ts=`date "+%Y%m%d%H%M%S"`
   echo "Processar $f backup saved in $m/s$ts-$f"
   cp $b/$f $m/s$ts-$f
   inkscape -l $b/$f $m/s$ts-$f
done

echo "Optimize svgs in $c"
for f in `ls $c`
do ts=`date "+%Y%m%d%H%M%S"`
   echo "Processar $f backup saved in $m/s$ts-$f"
   cp $c/$f $m/s$ts-$f
   inkscape -l $c/$f $m/s$ts-$f
done
}

matchscript()
{
arraypalette

(
# "match report in base"
for f in `ls $b/*`
do similarsvgcolor $f

for u in $rs
do u1=`echo $u|cut -d"|" -f1`
   showcoldest $u1
done

done

# "match report in comp"
for f in `ls $c/*`
do similarsvgcolor $f

for u in $rs
do u1=`echo $u|cut -d"|" -f1`
   showcoldest $u1
done

done
)|sort -ut : -k 3.1,3.2 -k 2,2 -k 1,1

rm -f grep$$
}

matchedlist()
{
arraypalette

(
# "match report in base"
for f in `ls $b/*`
do similarsvgcolor $f

for u in $rs
do u1=`echo $u|cut -d":" -f1`
   u2=`echo $u|cut -d":" -f2`
   #u3=`fgrep -i "fill:#$u1" $f|wc -l`
   u4=`echo $u2|cut -d"|" -f1`
   u5=`echo $u2|cut -d"|" -f2`
   echo "<h1 style=\"background-color:#$u1;color:#$u4\">$u1:$u4:$u5</h1>"
done

done

# "match report in comp"
for f in `ls $c/*`
do similarsvgcolor $f

for u in $rs
do u1=`echo $u|cut -d":" -f1`
   u2=`echo $u|cut -d":" -f2`
   #u3=`fgrep -i "fill:#$u1" $f|wc -l`
   u4=`echo $u2|cut -d"|" -f1`
   u5=`echo $u2|cut -d"|" -f2`
   echo "<h1 style=\"background-color:#$u1;color:#$u4\">$u1:$u4:$u5</h1>"
done

done
)|sort -u

rm -f grep$$
}

unmatchedlist()
{
arraypalette

(
# "unmatch report in base"
for f in `ls $b/*`
do similarsvgcolor $f

for u in $rn
do u1=`echo $u|cut -d":" -f1`
   echo "<h1 style=\"background-color:#$u1;\">$u1</h1>"
done

done

# "unmatch report in comp"
for f in `ls $c/*`
do similarsvgcolor $f

for u in $rn
do u1=`echo $u|cut -d":" -f1`
   echo "<h1 style=\"background-color:#$u1;\">$u1</h1>"
done

done
)|sort -u

rm -f grep$$

}

changecolor()
{

cori=`echo $1|cut -d":" -f1`
cdes=`echo $1|cut -d":" -f2`

# "change colors in base"
for f in `ls $b/*`
do 

nori=`fgrep -i "fill:#$cori" $f|wc -l`

if [ $nori -gt 0 ]
then 
     echo "$f change $1"
     echo "s%fill:#$cori%fill:#$cdes%g" >>sed$$
     bn=`basename $f`
     sed -f sed$$ $f >$m/z$$-$bn
     cp $f $m/s`date "+%Y%m%d%H%M%S"`-$bn
     mv $m/z$$-$bn $f
     rm -f sed$$
fi

done

# "change colors in comp"
for f in `ls $c/*`
do 

nori=`fgrep -i "fill:#$cori" $f|wc -l`

if [ $nori -gt 0 ]
then 
     echo "$f change $1"
     echo "s%fill:#$cori%fill:#$cdes%g" >>sed$$
     bn=`basename $f`
     sed -f sed$$ $f >$m/z$$-$bn
     cp $f $m/s`date "+%Y%m%d%H%M%S"`-$bn
     mv $m/z$$-$bn $f
     rm -f sed$$
fi

done

}

simchange()
{
arraypalette

# "change similar colors in base"
for f in `ls $b/*`
do similarsvgcolor $f

n=0
for u in $rs
do u1=`echo $u|cut -d":" -f1`
   u2=`echo $u|cut -d":" -f2|cut -c1-6`
   echo "s%fill:#$u1%fill:#$u2%g" >>sed$$
   n=`expr $n + 1`
done
if [ $n -gt 0 ]
then echo "$f $n altercoes de cor"
     bn=`basename $f`
     sed -f sed$$ $f >$m/z$$-$bn
     cp $f $m/s`date "+%Y%m%d%H%M%S"`-$bn
     mv $m/z$$-$bn $f
fi
rm -f sed$$

done

# "change similar colors in comp"
for f in `ls $c/*`
do similarsvgcolor $f

n=0
for u in $rs
do u1=`echo $u|cut -d":" -f1`
   u2=`echo $u|cut -d":" -f2|cut -c1-6`
   echo "s%fill:#$u1%fill:#$u2%g" >>sed$$
   n=`expr $n + 1`
done
if [ $n -gt 0 ]
then echo "$f $n altercoes de cor"
     bn=`basename $f`
     sed -f sed$$ $f >$m/z$$-$bn
     cp $f $m/s`date "+%Y%m%d%H%M%S"`-$bn
     mv $m/z$$-$bn $f
fi
rm -f sed$$

done

rm -f grep$$

}

simback()
{
bn=`basename $1`
u=`ls $m/s[0-9][0-9]*-$bn|cut -d"/" -f2|cut -c2-|sort -nr|head -1`
if [ -n "$u" ]
then echo "Recuprar $m/s$u para $1"
     cp $m/s$u $1
     rm $m/s$u
else echo "Nao existe recuperacao para $1 em $m"
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
# validar other colors aco[01-08]
n=0
n=`expr $n + 1`;valcor ${aco[$n]} ${vco[$n]} ${dco[$n]}
n=`expr $n + 1`;valcor ${aco[$n]} ${vco[$n]} ${dco[$n]}
n=`expr $n + 1`;valcor $c_fruga   ${vco[$n]} ${dco[$n]}
n=`expr $n + 1`;valcor ${aco[$n]} ${vco[$n]} ${dco[$n]}
n=`expr $n + 1`;valcor ${aco[$n]} ${vco[$n]} ${dco[$n]}
n=`expr $n + 1`;valcor ${aco[$n]} ${vco[$n]} ${dco[$n]}
n=`expr $n + 1`;valcor ${aco[$n]} ${vco[$n]} ${dco[$n]}
n=`expr $n + 1`;valcor ${aco[$n]} ${vco[$n]} ${dco[$n]}
# Obter schema cores calculadas
setschemafrugas
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
  -q          & show frontend-variables.scss
  -e          & show backend-variables.scss
  -opt        & [IMPORTANTE] optimize svgs - deve ser feito antes novos svgs
  -o des:ori  & show color des values obtained from color ori
  -w ori:des  & change color ori into color des
  -l limit    & set limit for similarity (default $y)
  -c          & change similar  colors
  -m          & show matched    color list (html   format)
  -t          & show matched    color list (script format)
  -u          & show unmatched  color list 
  -b svg      & go back to last change similarity colors
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

fe-variables()
{
valpal

#   c03 = #3D8E8E = rgb( 61,142,142) = rgba( 61,142,142,1) = rgb0(0.239,0.557,0.557) primary    color: brand-primary
#   c04 = #EDA366 = rgb(237,163,102) = rgba(237,163,102,1) = rgb0(0.929,0.639,0.4)   complement color: brand-warning:browns
#   c05 = #4E669F = rgb( 78,102,159) = rgba( 78,102,159,1) = rgb0(0.306,0.4,0.624)   secondary  color: brand-info:blues:30º
#   c06 = #EDC066 = rgb(237,192,102) = rgba(237,192,102,1) = rgb0(0.929,0.753,0.4)   secondary  color: yellows 30º
#   c07 = #ED6666 = rgb(237,102,102) = rgba(237,102,102,1) = rgb0(0.929,0.4,0.4)     secondary  color: brand-danger:reds:150º
#   c08 = #51BD51 = rgb( 81,189, 81) = rgba( 81,189, 81,1) = rgb0(0.318,0.741,0.318) secondary  color: brand-success:greens:150º
#\$btn-default-border: \$btn-default-bg;
#\$btn-primary-border: \$brand-primary;
#\$btn-success-border: \$brand-info;
#\$btn-info-border:    \$brand-success;
#\$btn-warning-border: \$brand-warning;
#\$btn-danger-border:  \$brand-danger;

cat << EOF
\$brand-primary: ${vco[3]};
\$brand-success: ${vco[8]};
\$brand-info:    ${vco[5]};
\$brand-warning: ${vco[4]};
\$brand-danger:  ${vco[7]};

\$btn-default-bg:     ${vco[13]};
\$btn-default-border: ${vco[16]};

\$btn-primary-bg: \$brand-primary;
\$btn-success-bg: \$brand-info;
\$btn-info-bg:    \$brand-info;
\$btn-warning-bg: \$brand-warning;
\$btn-danger-bg:  \$brand-danger;

\$border-radius-base:  2px;
\$border-radius-large: 4px;
\$border-radius-small: 1px;

\$font-family-sans-serif: "Ubuntu", sans-serif;
\$font-family-serif:      "Ubuntu", serif;
\$font-family-monospace:  "Ubuntu Mono", monospace;

@import "bootstrap-sprockets";
@import "bootstrap";
@import "font-awesome";

#logo {
    margin-top: 10px;
}
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
       sed -e "s%fill:$2%fill:$1%g" $b/$f >$b/z$f;mv $b/$f $m;mv $b/z$f $b/$f
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
       sed -e "s%fill:$2%fill:$1%g" $c/$f >$c/z$f;mv $c/$f $m;mv $c/z$f $c/$f
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
f5=fk # fruga.sma      -1cor-favicon-16x16-gig-eye
f6=fg # fruga.big-cotrp-2cor
f7=fh # fruga.sma-cotrp-2cor
f8=fi # fruga.big-ranhu-1cor
f9=fj # fruga.sma-ranhu-1cor

l1=ca # logo1 main                 0143x0059
l2=ch # fruga.big-tree1-sun-www-l1 0660x0150
l3=cl # trace1-ci                  2120x1192

t1=ta # tree1-amendoeira
t2=tb # tree2-small-flowers

# operation dirs
b=base
m=svg
o=png
c=comp
t=tmp
v=jpg
e=other

# output dirs for apps (mercado e comunidade)
z=/home/hernani/Documents/as3w/mfpt
x=/home/hernani/Documents/as3w/cfpt

# obter cores base
# aco[09-12] calculadas a partir de c_fruga:brand-primary
# aco[13-16] calculadas a partir de vco[4]:brand-warning:browns
# aco[17-20] calculadas a partir de vco[5]:brand-info:blues:30º
# acr[21-24] calculadas a partir de vco[6]:yellows:30º
# acr[25-28] calculadas a partir de vco[7]:brand-danger:reds:150º
# acr[29-32] calculadas a partir de vco[8]:brand-success:greens:150º
currentsvgcolors
aco[1]=${vco[1]}
aco[2]=${vco[2]}
aco[3]=${vco[3]};c_fruga=${vco[3]}
aco[4]=${vco[4]}
aco[5]=${vco[5]}
aco[6]=${vco[6]}
aco[7]=${vco[7]}
aco[8]=${vco[8]}

# teste pedidos alteracao de cor
ta=0
as=adjust_saturation
ab=adjust_brightness
# valor max em que uma cor e considereda similar
y="0.1"

SOPTS="hfsprqeo:w:l:cmtub:"
LOPTS="opt"

ARGS=$(getopt -a -o $SOPTS -l $LOPTS --name $PROGNAME -- "$@")

eval set -- "$ARGS"

while true; do
    case $1 in
    -h)   usage            ; exit 0;;
    -f)   showcolors fill  ; exit 0;;
    -s)   showcolors stroke; exit 0;;
    -p)   showpalette      ; exit 0;;
    -r)   simreport        ; exit 0;;
    -q)   fe-variables     ; exit 0;;
    -e)   fe-variables     ; exit 0;;
    -o)   showcoldest $2   ; exit 0;;
    -w)   changecolor $2   ; exit 0;;
    -l)   y=$2             ; shift;;
    -c)   simchange        ; exit 0;;
    -m)   matchedlist      ; exit 0;;
    -t)   matchscript      ; exit 0;;
    -u)   unmatchedlist    ; exit 0;;
    -b)   simback $2       ; exit 0;;
 --opt)   optsvgs          ; exit 0;;
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

#Usada para conversao -> png & jpg optimizadas
cpng="-strip -quality 75% -sampling-factor 4:2:0"
cjpg="-background white -flatten -interlace Line $cpng"

echo "Basic color palette for fruga"
r1="puts Color::RGB.from_html('$c_fruga')"
echo "`ruby -r color -e \"$r1.css_hsl\"`;`ruby -r color -e \"$r1.css_rgb\"`"

# realfavicongenerator.net
#<link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-57x57.png">
#<link rel="apple-touch-icon" sizes="60x60" href="/apple-touch-icon-60x60.png">
#<link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-72x72.png">
#<link rel="apple-touch-icon" sizes="76x76" href="/apple-touch-icon-76x76.png">
convert -background none       $b/$f5.svg $cpng -thumbnail 57x57   $o/apple-touch-icon-57x57.png
convert -background none       $b/$f5.svg $cpng -thumbnail 60x60   $o/apple-touch-icon-60x60.png
convert -background none       $b/$f4.svg $cpng -thumbnail 72x72   $o/apple-touch-icon-72x72.png
convert -background none       $b/$f4.svg $cpng -thumbnail 76x76   $o/apple-touch-icon-76x76.png
#<link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114x114.png">
#<link rel="apple-touch-icon" sizes="120x120" href="/apple-touch-icon-120x120.png">
#<link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144x144.png">
#<link rel="apple-touch-icon" sizes="152x152" href="/apple-touch-icon-152x152.png">
#<link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon-180x180.png">
convert -background ${aco[17]} -bordercolor ${aco[17]} $b/$f1.svg $cpng -thumbnail 98x98   -border 8x8   $o/apple-touch-icon-114x114.png
convert -background ${aco[17]} -bordercolor ${aco[17]} $b/$f1.svg $cpng -thumbnail 104x104 -border 8x8   $o/apple-touch-icon-120x120.png
convert -background ${aco[17]} -bordercolor ${aco[17]} $b/$f1.svg $cpng -thumbnail 124x124 -border 10x10 $o/apple-touch-icon-144x144.png
convert -background ${aco[17]} -bordercolor ${aco[17]} $b/$f1.svg $cpng -thumbnail 132x132 -border 10x10 $o/apple-touch-icon-152x152.png
convert -background ${aco[17]} -bordercolor ${aco[17]} $b/$f1.svg $cpng -thumbnail 156x156 -border 12x12 $o/apple-touch-icon-180x180.png
convert -background ${aco[17]} -bordercolor ${aco[17]} $b/$f1.svg $cpng -thumbnail 156x156 -border 12x12 $o/apple-touch-icon.png
convert -background ${aco[17]} -bordercolor ${aco[17]} $b/$f1.svg $cpng -thumbnail 156x156 -border 12x12 $o/apple-touch-icon-precomposed.png

#<link rel="icon" type="image/png" href="/android-chrome-192x192.png" sizes="192x192">
#<link rel="manifest" href="/manifest.json">
convert -background none       $b/$f5.svg $cpng -thumbnail 36x36   $o/android-chrome-36x36.png
convert -background none       $b/$f5.svg $cpng -thumbnail 48x48   $o/android-chrome-48x48.png
convert -background none       $b/$f4.svg $cpng -thumbnail 72x72   $o/android-chrome-72x72.png
convert -background none       $b/$f4.svg $cpng -thumbnail 96x96   $o/android-chrome-96x96.png
convert -background ${aco[17]} -bordercolor ${aco[17]} $b/$f1.svg $cpng -thumbnail 124x124 -border 10x10 $o/android-chrome-144x144.png
convert -background ${aco[17]} -bordercolor ${aco[17]} $b/$f1.svg $cpng -thumbnail 168x168 -border 12x12 $o/android-chrome-192x192.png
echo -e '{' > $e/manifest.json
echo -e '	"name": "Mercado Fruga",' >> $e/manifest.json
echo -e '	"icons": [' >> $e/manifest.json
echo -e '		{' >> $e/manifest.json
echo -e '			"src": "android-chrome-36x36.png",' >> $e/manifest.json
echo -e '			"sizes": "36x36",' >> $e/manifest.json
echo -e '			"type": "image/png",' >> $e/manifest.json
echo -e '			"density": "0.75"' >> $e/manifest.json
echo -e '		},' >> $e/manifest.json
echo -e '		{' >> $e/manifest.json
echo -e '			"src": "android-chrome-48x48.png",' >> $e/manifest.json
echo -e '			"sizes": "48x48",' >> $e/manifest.json
echo -e '			"type": "image/png",' >> $e/manifest.json
echo -e '			"density": "1.0"' >> $e/manifest.json
echo -e '		},' >> $e/manifest.json
echo -e '		{' >> $e/manifest.json
echo -e '			"src": "android-chrome-72x72.png",' >> $e/manifest.json
echo -e '			"sizes": "72x72",' >> $e/manifest.json
echo -e '			"type": "image/png",' >> $e/manifest.json
echo -e '			"density": "1.5"' >> $e/manifest.json
echo -e '		},' >> $e/manifest.json
echo -e '		{' >> $e/manifest.json
echo -e '			"src": "android-chrome-96x96.png",' >> $e/manifest.json
echo -e '			"sizes": "96x96",' >> $e/manifest.json
echo -e '			"type": "image/png",' >> $e/manifest.json
echo -e '			"density": "2.0"' >> $e/manifest.json
echo -e '		},' >> $e/manifest.json
echo -e '		{' >> $e/manifest.json
echo -e '			"src": "android-chrome-144x144.png",' >> $e/manifest.json
echo -e '			"sizes": "144x144",' >> $e/manifest.json
echo -e '			"type": "image/png",' >> $e/manifest.json
echo -e '			"density": "3.0"' >> $e/manifest.json
echo -e '		},' >> $e/manifest.json
echo -e '		{' >> $e/manifest.json
echo -e '			"src": "android-chrome-192x192.png",' >> $e/manifest.json
echo -e '			"sizes": "192x192",' >> $e/manifest.json
echo -e '			"type": "image/png",' >> $e/manifest.json
echo -e '			"density": "4.0"' >> $e/manifest.json
echo -e '		}' >> $e/manifest.json
echo -e '	],' >> $e/manifest.json
echo -e '	"start_url": "http://mercado.fruga.pt",' >> $e/manifest.json
echo -e '	"display": "standalone"' >> $e/manifest.json
echo -e '}' >> $e/manifest.json

#<link rel="icon" type="image/png" href="/favicon-16x16.png" sizes="16x16">
#<link rel="icon" type="image/png" href="/favicon-32x32.png" sizes="32x32">
#<link rel="icon" type="image/png" href="/favicon-96x96.png" sizes="96x96">
#<link rel="icon" type="image/png" href="/favicon-194x194.png" sizes="194x194">
convert -background none       $b/$f5.svg $cpng -thumbnail 16x16   $o/favicon-16x16.png
convert -background none       $b/$f5.svg $cpng -thumbnail 32x32   $o/favicon-32x32.png
convert -background none       $b/$f5.svg $cpng -thumbnail 96x96   $o/favicon-96x96.png
convert -background none       $b/$f5.svg $cpng -thumbnail 194x194 $o/favicon-194x194.png
convert $o/favicon-16x16.png $o/favicon-32x32.png $o/android-chrome-48x48.png $o/favicon.ico

#<meta name="msapplication-TileColor" content="#cceaee">
#<meta name="msapplication-TileImage" content="/mstile-144x144.png">
#<meta name="theme-color" content="#3d8e8e">
convert -background ${aco[17]} -bordercolor ${aco[17]} $b/$f1.svg $cpng -thumbnail 70x70   -border 29x29   $o/mstile-128x128.png
convert -background ${aco[17]} -bordercolor ${aco[17]} $b/$f1.svg $cpng -thumbnail 124x124 -border 10x10   $o/mstile-144x144.png
convert -background ${aco[17]} -bordercolor ${aco[17]} $b/$f1.svg $cpng -thumbnail 150x150 -border 60x60   $o/mstile-270x270.png
convert -background ${aco[17]} -bordercolor ${aco[17]} $b/$f1.svg $cpng -thumbnail 150x150 -border 204x60  $o/mstile-558x270.png
convert -background ${aco[17]} -bordercolor ${aco[17]} $b/$f1.svg $cpng -thumbnail 310x310 -border 124x124 $o/mstile-558x558.png
echo -e '<?xml version="1.0" encoding="utf-8"?>'                > $e/browserconfig.xml
echo -e '<browserconfig>'                                      >> $e/browserconfig.xml
echo -e '  <msapplication>'                                    >> $e/browserconfig.xml
echo -e '    <tile>'                                           >> $e/browserconfig.xml
echo -e '      <square70x70logo src="/mstile-128x128.png"/>'   >> $e/browserconfig.xml
echo -e '      <square150x150logo src="/mstile-270x270.png"/>' >> $e/browserconfig.xml
echo -e '      <square310x310logo src="/mstile-558x558.png"/>' >> $e/browserconfig.xml
echo -e '      <wide310x150logo src="/mstile-558x270.png"/>'   >> $e/browserconfig.xml
echo -e "      <TileColor>${aco[17]}</TileColor>"              >> $e/browserconfig.xml
echo -e '    </tile>'                                          >> $e/browserconfig.xml
echo -e '  </msapplication>'                                   >> $e/browserconfig.xml
echo -e '</browserconfig>'                                     >> $e/browserconfig.xml

# realfavicongenerator.net
# _head.html.erb com favicons e cores
cat << EOFini > $e/_head.html.erb
<link href='http://fonts.googleapis.com/css?family=Ubuntu:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<meta charset="utf-8">
<title><%= title %></title>
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type" />
<meta content="width=device-width, initial-scale=1.0" name="viewport">
EOFini

echo -e "<meta name=\"msapplication-TileColor\" content=\"${aco[17]}\">" >> $e/_head.html.erb
echo -e "<meta name=\"theme-color\" content=\"${aco[5]}\">"              >> $e/_head.html.erb

cat << EOFfim >> $e/_head.html.erb
<%= tag('meta', name: "msapplication-TileImage", content: asset_path("mstile-144x144.png")) %>
<%== meta_data_tags %>
<link rel="manifest" href="manifest.json">
<%= canonical_tag(current_store.url) %>
<%= favicon_link_tag 'apple-touch-icon-57x57.png', rel: "apple-touch-icon", sizes: "57x57" %>
<%= favicon_link_tag 'apple-touch-icon-60x60.png', rel: "apple-touch-icon", sizes: "60x60" %>
<%= favicon_link_tag 'apple-touch-icon-72x72.png', rel: "apple-touch-icon", sizes: "72x72" %>
<%= favicon_link_tag 'apple-touch-icon-76x76.png', rel: "apple-touch-icon", sizes: "76x76" %>
<%= favicon_link_tag 'apple-touch-icon-114x114.png', rel: "apple-touch-icon", sizes: "114x114" %>
<%= favicon_link_tag 'apple-touch-icon-120x120.png', rel: "apple-touch-icon", sizes: "120x120" %>
<%= favicon_link_tag 'apple-touch-icon-144x144.png', rel: "apple-touch-icon", sizes: "144x144" %>
<%= favicon_link_tag 'apple-touch-icon-152x152.png', rel: "apple-touch-icon", sizes: "152x152" %>
<%= favicon_link_tag 'apple-touch-icon-180x180.png', rel: "apple-touch-icon", sizes: "180x180" %>
<%= favicon_link_tag 'android-chrome-192x192.png', rel: "icon", sizes: "192x192", type: "image/png" %>
<%= favicon_link_tag 'favicon-16x16.png', rel: "icon", sizes: "16x16", type: "image/png" %>
<%= favicon_link_tag 'favicon-32x32.png', rel: "icon", sizes: "32x32", type: "image/png" %>
<%= favicon_link_tag 'favicon-96x96.png', rel: "icon", sizes: "96x96", type: "image/png" %>
<%= favicon_link_tag 'favicon-194x194.png', rel: "icon", sizes: "194x194", type: "image/png" %>
<%= stylesheet_link_tag 'spree/frontend/all', media: 'screen' %>
<%= csrf_meta_tags %>
<%= javascript_include_tag 'spree/frontend/all' %>
<!--[if lt IE 9]>
  <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.6/html5shiv.min.js"></script>
<![endif]-->
<%= yield :head %>
EOFfim
# realfavicongenerator.net

# Composição google+,places,blog x200
rsvg-convert -h 200 -a     -f png $c/$l1.svg -o $o/$l1-gp.png
convert -background none -bordercolor none $b/$f1.svg $cpng -thumbnail 200x200 -border 50x50 $o/$f1-gpp.png

# Composição google+,paginas, min(480x270)"
rsvg-convert -w 480 -h 270 -f png $c/$l1.svg -o $o/$l1-gpp.png

# Composição google Enterprise 143x59 "
rsvg-convert                -f png $c/$l1.svg -o $o/$l1-ge.png

# Composicao google-api-logo  max120x60"
rsvg-convert -w 120 -h 60   -f png $c/$l1.svg -o $o/$l1-ga.png

# Composicoes facebook "
#  capa-min720x 
#  banners f1=155x100 f2=800x150 opcionais f2=180x115 f4=394x150 
rsvg-convert -w 722 -a -f png $c/$l1.svg -o $o/$l1-fb.png
rsvg-convert -h 75  -a -f png $b/$f3.svg -o $t/$f1-0075.png
rsvg-convert -h 180 -a -f png $b/$f5.svg -o $t/$f1-0180.png
convert $cpng $t/$f1-0075.png $o/$f1-0075.png
convert $cpng $t/$f1-0180.png $o/$f1-0180.png


# Composicao twitter capa-1252x626 fundo-1000"
rsvg-convert -w 1252 -h 626 -f png $c/$l1.svg -o $o/$l1-tw.png
rsvg-convert -w 1000 -a     -f png $b/$t1.svg -o $o/$t1-tw.png

# Composicao flickr-api-logo 300x90 max600x300"
convert -background none $c/$l2.svg -thumbnail 396x90 $o/$l2-fl.gif

# Composicao youtube channel "
#tv      2120x1192
#desktop 2120x350
#tablet  1536x350
#mobile  1280x350
rsvg-convert               -f png $c/$l3.svg -o $t/$l3-yt.png
convert $cjpg $t/$l3-yt.png $v/$l3-yt.jpg

# usa svgo - Nodejs-based tool for optimizing SVG vector graphics files
# Composicao logo mercado used by spree 176x82 2050x"
rsvg-convert -a -h 82   -f png $c/$l1.svg           -o $o/mfpt-logo.png
rsvg-convert -a -h 40   -f png $c/$l1.svg           -o $o/mfpt-logo-admin.png
rsvg-convert -a -h 82   -f svg $c/$l1.svg|svgo -i - -o $m/mfpt-logo.svg
rsvg-convert -a -h 40   -f svg $c/$l1.svg|svgo -i - -o $m/mfpt-logo-admin.svg
convert $cjpg $o/mfpt-logo.png       $v/mfpt-logo.jpg
convert $cjpg $o/mfpt-logo-admin.png $v/mfpt-logo-admin.jpg

# Composicao logo comunidade navbar tem x50 "
# com estes -h da x46 em ambos png,svg
rsvg-convert -a -h 46  -f png $c/$l1.svg           -o $o/cfpt-logo.png
rsvg-convert -a -h 37  -f svg $c/$l1.svg|svgo -i - -o $m/cfpt-logo.svg

# Criar versao svg optimizada"
# svgz precisa content-encoding http header set gzip in aws
gzip -cfq9 $m/mfpt-logo.svg       > $m/mfpt-logo.svgz
gzip -cfq9 $m/mfpt-logo-admin.svg > $m/mfpt-logo-admin.svgz
gzip -cfq9 $m/cfpt-logo.svg       > $m/cfpt-logo.svgz

rsvg-convert -a     -h 240 -f png $b/$f1.svg -o $t/$f1-pr.png
./preplet.sh imagem la t240 h120 ${aco[5]}
./preplet.sh "não existe" la t240 h120 ${aco[5]}
convert $o/panão_existe.png $o/paimagem.png \
	-gravity center -append $t/pr.png
composite -dissolve 25% -gravity center \
        $t/$f1-pr.png  $t/pr.png $o/product.png 
composite -dissolve 25% -gravity center \
        $t/$f1-pr.png  $t/pr.png $o/large.png 

rsvg-convert -a     -h 100 -f png $b/$f1.svg -o $t/$f1-pr.png
./preplet.sh imagem la t100 h50 ${aco[5]}
./preplet.sh "não existe" la t100 h50 ${aco[5]}
convert $o/panão_existe.png $o/paimagem.png \
	-gravity center -append $t/pr.png
composite -dissolve 25% -gravity center \
        $t/$f1-pr.png  $t/pr.png $o/small.png 

rsvg-convert -a     -h 48  -f png $b/$f1.svg -o $t/$f1-pr.png
./preplet.sh imagem la t48 h24 ${aco[5]}
./preplet.sh "não existe" la t48 h24 ${aco[5]}
convert $o/panão_existe.png $o/paimagem.png \
	-gravity center -append $t/pr.png
composite -dissolve 25% -gravity center \
        $t/$f1-pr.png  $t/pr.png $o/mini.png 
rm $o/paimagem.png $o/panão_existe.png

# Composicao blog x200
#rsvg-convert -h 200 -a     -f png $c/$l2.svg -o $t/$l2-bl.png
#convert $t/$l2-bl.png -background white -flatten $o/bg1.jpg
# Composicao botoes doar fruga 80x64, paypal 73x26"
#rsvg-convert               -f png $c/$l4.svg -o $o/$l4-doar.png
#rsvg-convert               -f png $c/$l5.svg -o $o/$l5-doar.png

exit

#Antigos comandos de manipulacao imagens
#inkscape -z -a01:01:0076:0076 -e$o/$f1-0075.png $m/${f1}0075.svg
#inkscape -z -a05:00:0095:0115 -e$o/$f1-0115.png $m/${f1}0115.svg
#inkscape -z -a02:02:0258:0258 -e$o/$f1-0256.png $m/${f1}0256.svg

# Other places
#rsvg-convert -h 75  -a -f png $b/$f1.svg -o $o/${f1}0075.png
#rsvg-convert -h 115 -a -f png $b/$f1.svg -o $o/${f1}0115.png
#rsvg-convert -h 150 -a -f png $b/$f1.svg -o $o/${f1}01501.png
#rsvg-convert -h 120 -a -f png $b/$f1.svg -o $o/${f1}01502.png
#rsvg-convert -h 120 -a -f png $b/$f1.svg -o $o/${f1}01503.png
inkscape -z -a00:00:0500:0500 -e$o/$f1-0500.png $m/${f1}0500.svg
inkscape -z -a00:00:1280:1280 -e$o/$f1-1280.png $m/${f1}1280.svg
inkscape -z -a00:00:2048:2048 -e$o/$f1-2048.png $m/${f1}2048.svg
inkscape -z -a00:00:0048:0048 -e$o/$f1-icon.png $m/${f1}0048.svg

# Facebook Banners f1=155x100 f2=180x115 f3=800x150 f4=394x150 
inkscape -z -a00:00:0155:0050 -e$o/$l1$o1-f1.png  $m/$l1${o1}1.svg
inkscape -z -a00:00:0155:0050 -e$o/$l1$o2-f1.png  $m/$l1${o2}1.svg
inkscape -z -a00:01:0180:0060 -e$o/$l1$o1-f2.png  $m/$l1${o1}2.svg
inkscape -z -a00:00:0180:0056 -e$o/$l1$o2-f2.png  $m/$l1${o2}2.svg
inkscape -z                   -e$o/$l1$o1-f3.png  $m/$l1${o1}3.svg
inkscape -z                   -e$o/$l1$o2-f3.png  $m/$l1${o2}3.svg
inkscape -z -a00:00:0150:0054 -e$o/$l1$o3-f3.png  $m/$l1${o3}3.svg
inkscape -z                   -e$o/$f1-01501.png  $m/${f1}01501.svg
inkscape -z                   -e$o/$f1-01502.png  $m/${f1}01502.svg
inkscape -z -a04:00:0150:0150 -e$o/$f1-01503.png  $m/${f1}01503.svg
inkscape -z -a06:01:0267:0088 -e$o/$l1$o1-f4.png  $m/$l1${o1}4.svg
inkscape -z -a00:00:0261:0063 -e$o/$l1$o2-f4.png  $m/$l1${o2}4.svg
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

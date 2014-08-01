ty=${1-1}                   # 1/0 - prepara elementos base 
f1=`basename ${2-fc} .svg` # Fruga Base
f2=`basename ${3-fb} .svg` # Fruga mais simples para favicon
l1=`basename ${4-ca} .svg` # Letras frugal com fruga
l2=`basename ${5-cb} .svg` # Letras lifestyle com arvores
n1=`echo $f1|cut -c3-`
n2=`echo $f2|cut -c3-`
o1=`echo $l1|cut -c3-`
o2=`echo $l2|cut -c3-`
i=base
o=svg2
r=./remove.sh

# Preparar elementos base 
if [ $ty -eq 1 ]
then 
 #$r $i/$f1.svg 1 fruga
 #$r $i/$f1.svg 2 arvore
 $r $i/$f1.svg 3 fruga sol r11t r121c g1
 #$r $i/$f2.svg 1 back shadow
 #$r $i/$l1.svg 2 lawye lawgr laye lagr labl lafruga2
 #$r $i/$l2.svg 3 licoin le1fruga le2fruga lyarvore ll2 sol1
 #$r $i/$l2.svg 4 licoin le1fruga le2fruga ll2arvore ly so2
 #$r $i/$l2.svg 5 licoin le1fruga le2fruga lyarvore ll2 sol1 so2
 #$r $i/$l2.svg 6 licoin le1fruga le2fruga ll2arvore ly sol1 so2
 #$r $i/$l1.svg 7 lawye lawgr lawbl laye lagr lafruga1 lafruga2 coin4 ll
 #$r $i/$l1.svg 8 lawye lawgr lawbl laye lagr lafruga1 lafruga2 coin4
 #$r $i/$l2.svg 9 licoin le1fruga le2fruga lyarvore ll2arvore sol1 so2
fi

# Escolha de svg iniciais
n2=`expr 1 + $n2` #fruga b para favicon
n3=`expr 1 + $n1` #arvore sol grass
n4=`expr 1 + $n3` #fruga grass
n5=`expr 1 + $n4` #arvore grass
o1=`expr 2 + $o1` #frugal com fruga
o2=`expr 4 + $o2` #lifestyle com arvore no l
o3=`expr $o2 - 1` #lifestyle com arvore no y e sol
o4=`expr 5 + $o1` #fruga  sem desenhos
o5=`expr 6 + $o1` #frugal sem desenhos
o6=`expr 1 + $o5` #lifestyle sem desenhos
f1=`echo $f1|cut -c1-2`
f2=`echo $f2|cut -c1-2`
l1=`echo $l1|cut -c1-2`
l2=`echo $l2|cut -c1-2`

rsvg-convert -h 14  -a -f svg $i/$f2$n2.svg -o $o/${f1}0016.svg
rsvg-convert -h 27  -a -f svg $i/$f2$n2.svg -o $o/${f1}0032.svg
rsvg-convert -h 38  -a -f svg $i/$f1$n1.svg -o $o/${f1}0048.svg
rsvg-convert -h 52  -a -f svg $i/$f1$n1.svg -o $o/${f1}0064.svg
rsvg-convert -h 61  -a -f svg $i/$f1$n1.svg -o $o/${f1}0075.svg
rsvg-convert -h 76  -a -f svg $i/$f1$n1.svg -o $o/${f1}0115.svg
rsvg-convert -h 104 -a -f svg $i/$f1$n1.svg -o $o/${f1}0128.svg
rsvg-convert -h 120 -a -f svg $i/$f1$n3.svg -o $o/${f1}01501.svg
rsvg-convert -h 120 -a -f svg $i/$f1$n4.svg -o $o/${f1}01502.svg
rsvg-convert -h 120 -a -f svg $i/$f1$n5.svg -o $o/${f1}01503.svg
rsvg-convert -h 208 -a -f svg $i/$f1$n1.svg -o $o/${f1}0256.svg

# Other places
rsvg-convert -h 400  -a -f svg $i/$f1$n1.svg -o $o/${f1}0500.svg
rsvg-convert -h 1024 -a -f svg $i/$f1$n1.svg -o $o/${f1}1280.svg
rsvg-convert -h 1638 -a -f svg $i/$f1$n1.svg -o $o/${f1}2048.svg

# Facebook Banners f1=155x100 f2=180x115 f3=800x150 f4=394x150
rsvg-convert -w 124 -a     -f svg $i/$l1$o1.svg -o $o/${l1}11.svg
rsvg-convert -w 125 -a     -f svg $i/$l2$o3.svg -o $o/${l2}21.svg
rsvg-convert -w 144 -a     -f svg $i/$l1$o1.svg -o $o/${l1}12.svg
rsvg-convert -w 144 -a     -f svg $i/$l2$o3.svg -o $o/${l2}22.svg
rsvg-convert -h 80  -a     -f svg $i/$l1$o5.svg -o $o/${l1}13.svg
rsvg-convert -h 40  -w 240 -f svg $i/$l2$o6.svg -o $o/${l2}23.svg
rsvg-convert -w 128 -a     -f svg $i/$l1$o4.svg -o $o/${l1}33.svg
rsvg-convert -h 60  -w 210 -f svg $i/$l1$o1.svg -o $o/${l1}14.svg
rsvg-convert -h 50  -w 210 -f svg $i/$l2$o2.svg -o $o/${l2}24.svg


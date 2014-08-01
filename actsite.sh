#!/bin/bash

PROGNAME=${0##*/}

usage()
{
  cat << EO
Actualiza fruga brand logos & images para todos os locais apropriados
EO

  cat <<EO | column -s\& -t

  -h          & show this output
  -c          & actualiza brand da comunidade
  -m          & actualiza brand do mercado
EO
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

# operation dirs & output dirs for apps (mercado e comunidade)
w="/home/hernani/Documents"
b="$w/fruga-brand/base"
i="$w/fruga-brand/svg"
o="$w/fruga-brand/png"
c="$w/fruga-brand/comp"
t="$w/fruga-brand/tmp"
f="$w/fruga-brand/fotos"
g="$w/fruga-brand/fonts"
z="$w/as3w/mfpt"
x="$w/as3w/cfpt"
k=all

SOPTS="hcm"
LOPTS=""

ARGS=$(getopt -a -o $SOPTS --name $PROGNAME -- "$@")

eval set -- "$ARGS"

while true; do
    case $1 in
    -h)   usage ; exit 0;;
    -c) k=cfpt; shift;;
    -m) k=mfpt; shift;;
    --)  shift  ; break;;
    *)   shift  ; break;;
    esac
    shift
done

# mercado.fruga
if [ $k = all -o $k = mfpt ]
then 

#for inline Data URI's <img src="data:image/svg+xml;base64,[data]>
#cat svg|openssl base64|tr -d '\n' [data]
u="svgo --disable=convertPathData --disable=convertStyleToAttrs -i"
#$u $i/mfpt-logo.svg -o - > $z/app/assets/images/logo/mfpt-logo.svg
cp $i/mfpt-logo.svg        $z/app/assets/images/logo
cp $o/mfpt-logo.png        $z/app/assets/images/logo
cp $o/mfpt-logo-admin.png  $z/app/assets/images/logo
cp $o/product.png          $z/app/assets/images/noimage
cp $o/large.png            $z/app/assets/images/noimage
cp $o/small.png            $z/app/assets/images/noimage
cp $o/mini.png             $z/app/assets/images/noimage
cp $o/cart.png             $z/app/assets/images/store
cp $o/*-doar.png           $z/app/assets/images/store
cp $o/favicon.ico          $z/app/assets/images
cp $o/favicon.ico          $z/public
cp $o/$l1-ga.png           $z/public/google-api-logo.png
cp $o/apple-touch-icon.png $z/app/assets/images
cp $o/icon_128.gif         $z/app/assets/images
cp $o/$f1-*.png            $z/app/assets/images

fi

# comunidade.fruga
if [ $k = all -o $k = cfpt ]
then 

cp $g/*.ttf                   $x/app/assets/stylesheets/fonts
cp $f/*.jpg                   $x/themes/bootstrap/images
cp $o/favicon.ico             $x/public
cp $o/apple-touch-icon.png    $x/public
cp $o/icon_128.gif            $x/public
cp $i/cfpt-logo.svg           $x/app/assets/images/logo
cp $o/cfpt-logo.png           $x/app/assets/images/logo
cp $o/$f1-*.png               $x/app/assets/images
cp $o/*-doar.png              $x/app/assets/images
cp $o/s?.png                  $x/app/assets/images

fi

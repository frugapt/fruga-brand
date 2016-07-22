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

# operation dirs & output dirs for apps (mercado e comunidade)
w="/home/hernani/Documents"
b="$w/fruga-brand/base"
m="$w/fruga-brand/svg"
o="$w/fruga-brand/png"
c="$w/fruga-brand/comp"
t="$w/fruga-brand/tmp"
v="$w/fruga-brand/jpg"
e="$w/fruga-brand/other"
f="$w/fruga-brand/fotos"
g="$w/fruga-brand/fonts"

# mercado
z="$w/as3w/fruga/mfpt"
i="spree/frontend"
j="spree/backend"
y="$w/as3w/fruga/$i/app/assets/stylesheets/$i"
s="$w/as3w/fruga/$j/app/assets/stylesheets/$j"
a="$z/app/assets"
b="$z/vendor/assets"
n="$a/stylesheets/$i"

# comunidade
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
#$u $m/mfpt-logo.svg -o - > $z/app/assets/images/logo/mfpt-logo.svg

cp $m/mfpt-*               $z/app/assets/images
cp $o/mfpt-*               $z/app/assets/images
cp $v/mfpt-*               $z/app/assets/images
cp $o/product.png          $z/app/assets/images
cp $o/large.png            $z/app/assets/images
cp $o/small.png            $z/app/assets/images
cp $o/mini.png             $z/app/assets/images

cp $o/favicon*             $z/app/assets/images
cp $o/apple-touch-icon*    $z/app/assets/images
cp $o/android-chrome*      $z/app/assets/images
cp $o/mstile*              $z/app/assets/images
cp $o/$f1-*.png            $z/app/assets/images

cp $o/favicon.ico          $z/public
cp $o/apple-touch-icon*    $z/public
cp $o/mstile*              $z/public
cp $o/$l1-ga.png           $z/public/google-api-logo.png

# realfavicongenerator.net
cp $e/browserconfig.xml    $z/public
cp $e/manifest.json        $z/public
mkdir -p $z/app/views/spree/shared
cp $e/_head.html.erb       $z/app/views/spree/shared/_head.html.erb

# frontend bootstrap scss
mkdir -p $n
$w/fruga-brand/preppng.sh -q > $n/frontend_bootstrap.css.scss

fi

# comunidade.fruga
if [ $k = all -o $k = cfpt ]
then 

cp $g/*.ttf                   $x/app/assets/stylesheets/fonts
cp $f/*.jpg                   $x/themes/bootstrap/images
cp $o/favicon.ico             $x/public
cp $o/apple-touch-icon.png    $x/public
cp $o/icon_128.gif            $x/public
cp $m/cfpt-logo.svg           $x/app/assets/images/logo
cp $o/cfpt-logo.png           $x/app/assets/images/logo
cp $o/$f1-*.png               $x/app/assets/images
cp $o/s?.png                  $x/app/assets/images

fi

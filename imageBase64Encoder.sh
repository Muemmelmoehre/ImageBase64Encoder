#!/usr/bin/env bash

image=$1
outfile=$2
format=$3

if (("$#" < 3)) 
then
	echo "Usage : ./imageBase64Encoder.sh <image> <outfile> <image format>" 
	echo "ex.: ./imageBase64Encoder.sh image.jpeg out.html jpeg"
else
	imageBase64=$(base64 $image)
	echo "<img src=\"data:image/$format;base64,$imageBase64\">" > $outfile
fi

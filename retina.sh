#!/bin/sh
 
echo "This script will take an input folder full of images and assuming they're all retina sized, output the second folder to have retina and standard sized images."
 
if [ ! $# == 2 ]; then
  echo "Usage: $0 in out"
  exit
fi
 
if [ ! -d $1 ]
then
    echo "Please provide a valid input path as first parameter"
    exit
fi
 
if [ ! -d $2 ]
then
    echo "Please provide a valid output path as second parameter"
    exit
fi
 
here=`pwd`
inDir="$1"
outDir="$2"
 
echo "Processing $1.."
 
cd ${inDir}
 
 
# $1 file path of image to process $2 the extension of said file
function process_extension() {
    local file="$1"
    local ext="$2"
    
    local height=`sips --getProperty pixelHeight "$file" | sed -E "s/.*pixelHeight: ([0-9]+)/\1/g" | tail -1`
 
    local width=`sips --getProperty pixelWidth "$file" | sed -E "s/.*pixelWidth: ([0-9]+)/\1/g" | tail -1`
 
    local at2xFile=`echo "$file" | sed -E "s/(.*)\.$ext/\1@2x.$ext/g"` 
    
    echo "$at2xFile @ $height x $width"
    
    local smallHeight=$(($height/2))
    local smallWidth=$(($width/2))
    
    echo "$file @ $smallHeight x $smallWidth"
    
    local outFolder="`dirname "$here/$outDir/$file"`"
    
    mkdir -p "$outFolder"
    
    #cp "$here/$inDir/$file" "$here/$outDir/$at2xFile"
 
    # version 2 - re-process EVERYTHING. Useful if silly export settings are used.
    sips -z $height $width "$here/$inDir/$file" --out "$here/$outDir/$at2xFile"
    sips -z $smallHeight $smallWidth "$here/$inDir/$file" --out "$here/$outDir/$file"
}
 
 
# files all files with given extension in folder
# $1 the extension (e.g. png). NO DOT
function do_for_extension () {
    local ext=$1
    
    echo "==============================="
    echo " Doing $ext files"
    echo "==============================="
    
    find * -not -iwholename '*.svn*' -name "*.$ext" | while read file; do
        process_extension "$file" $ext
    done
}
 
do_for_extension png
do_for_extension PNG
do_for_extension jpg
do_for_extension JPG
do_for_extension jpeg
do_for_extension JPEG
 
echo "------------------------------"
echo "DONE"
 
# go back to original folder
cd -
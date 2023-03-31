#!/bin/zsh

for file in $(find . -name "*.png"); do
	pngfilename=$(basename -- "$file")
	pngfilename="${pngfilename%.*}"
	png_file="../images/${pngfilename}.png"

	echo "${file} -> ${png_file}"
	cat $file | git lfs smudge > $png_file
done;

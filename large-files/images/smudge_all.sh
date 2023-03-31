#!/bin/zsh

for file in $(find . -name "*.txt"); do
	pngfilename=$(basename -- "$file")
	pngfilename="${pngfilename%.*}"
	png_file="${pngfilename}.png"

	echo "${file} -> ${png_file}"
	cat $file | git lfs smudge > $png_file
done;

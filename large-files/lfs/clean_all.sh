#!/bin/zsh

for file in $(find ../images -name "*.png"); do
	pointername=$(basename -- "$file")
	pointername="${pointername%.*}"
	pointer_file="${pointername}.png"

	echo "${file} -> ${pointer_file}"
	cat $file | git lfs clean > $pointer_file
done;

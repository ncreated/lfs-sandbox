#!/bin/zsh

for file in $(find . -name "*.png"); do
	pointername=$(basename -- "$file")
	pointername="${pointername%.*}"
	pointer_file="${pointername}.txt"

	echo "${file} -> ${pointer_file}"
	cat $file | git lfs clean > $pointer_file
done;

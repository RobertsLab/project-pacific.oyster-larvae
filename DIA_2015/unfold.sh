#!/bin/bash

sed 's/; /\t/g' /c/Users/Rhonda/Desktop/Backup/Documents/GitHub/project-pacific.oyster-larvae/DIA_2015/AnnotatedproteinsGO.tabular > /c/Users/Rhonda/Desktop/Backup/Documents/GitHub/project-pacific.oyster-larvae/DIA_2015/AnnotatedproteinsGOunfolded.tabular

file="/c/Users/Rhonda/Desktop/Backup/Documents/GitHub/project-pacific.oyster-larvae/DIA_2015/AnnotatedproteinsGOunfolded.tabular"
while read -r line
	do
	max_field=$(echo "$line" | awk -F'\t' '{print NF}')
	set_fields=$(echo "$line" | cut -f1-12)
	if (( "$max_field" < 13 ))
		then printf "%s\n" "$line"
		else
			goterms=$(echo "$line" | cut -f13-$max_field)
			IFS=$'\t' read -r -a array <<<"$goterms"
				for element in "${!array[@]}"	
					do printf "%s\t%s\n" "$set_fields" "${array[$element]}"
				done
	fi
done < "$file" > unfolded.tab
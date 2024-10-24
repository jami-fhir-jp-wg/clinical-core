#!/bin/bash
root1=clinical-core
root2=clinical-core_20241009
subdir=input/fsh/profiles
root1=clinical-core
root2=clinical-core_20241009
subdir=input/fsh/profiles
#
width=100
#
while read -d $'\0' file; do
    new_file_path=$(echo "$file" | sed "s#^$root1#$root2#")
    diff -q --b --suppress-common-lines ${file} ${new_file_path} > /dev/null 2>&1
        if [ $? -eq 1 ]; then
         echo ${file}
      fi
done < <(find ${root1}/${subdir} -name '*.fsh' -print0)
while read -d $'\0' file; do
    new_file_path=$(echo "$file" | sed "s#^$root1#$root2#")
    diff -q --b --suppress-common-lines ${file} ${new_file_path} > /dev/null 2>&1
	if [ $? -eq 1 ]; then
	 echo -e "\n\n ========= " ${file} " ========= "
	 diff -b -y --suppress-common-lines -W ${width}  ${file} ${new_file_path}
      fi
done < <(find ${root1}/${subdir} -name '*.fsh' -print0)

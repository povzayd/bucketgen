#!/bin/bash
#takes input a subdomain file
read -e -p "Enter the path to subdomain file: " sub_file
#check if the file exists
if [ ! -f "${sub_file}" ]; then
  echo "ERROR 404! ${sub_file} no such file."
  exit 1
fi
#ENTER THE KEYWORD
read -e -p "Enter the KEYWORD: " keyword
#create output file
output_file="${keyword}.txt"
while read -r line; do
  printf "%s-%s\n" "${keyword}" "${line}" >> "${output_file}"
  printf "%s_%s\n" "${keyword}" "${line}" >> "${output_file}"
  printf "%s-%s\n" "${line}" "${keyword}" >> "${output_file}"
  printf "%s_%s\n" "${line}" "${keyword}" >> "${output_file}"
done < "${sub_file}"
echo "OUTPUT WRITTEN TO ${output_file}"
#
#
#
#
#
#
#
#
#
#
#
#
#
#

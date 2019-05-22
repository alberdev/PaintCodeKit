dir="files"
for f in "$dir"/*; do
  sed '/.*\d="\(.*\)\" .*/ s//\1/g' $f > "${f%%.*}"_data.txt
done
#while IFS='' read -r line || [[ -n "$line" ]]; do
#    sed '/.*\d="\(.*\)\" .*/ s//\1/g'

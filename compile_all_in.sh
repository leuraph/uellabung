DIR=$1

# echo ${DIR}
for file in ${DIR}/*; do
    if [ -f "$file" ]; then
        echo "Processing file: $file"
        ./compile.sh $file
    fi
done
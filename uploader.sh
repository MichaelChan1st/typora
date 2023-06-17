#!/bin/bash
# 各类配置信息
base_url="https://github.com/MichaelChan1st/typora"

for i in "$@"
do 
	git add "$i"
	git commit -m "$i"
	git push
done

# 输出结果
echo "Upload Success:"
for file in "$@"
do	
	IFS='/' read -r -a array <<< "$file"
	id="${#array[@]}"
	echo "$base_url"/"${array[$id-1]}"
done

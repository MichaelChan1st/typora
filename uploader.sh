#!/bin/bash
# 各类配置信息
base_url="https://github.com/MichaelChan1st/typora/blob/main"


for i in "$@"
do 
	mv $i /Users/radicalism/Desktop/Notes/upload-pic/typora/
done
for i in "$@"
do
	suffix=$(basename $i)
	git add "$suffix"
	git commit -m "$suffix"
	git push
done
# 输出结果
echo "Upload Success:"
for file in "$@"
do	
	suffix1=$(basename $file)
	echo "$base_url"/"$suffix1"

done

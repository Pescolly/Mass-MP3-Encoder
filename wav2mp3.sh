echo "enter source directory"
read sourceDir

echo "enter destination"
read destination

cd "$sourceDir"
for i in *
do

	file=${i##*/}
	file=${file%.*}
	
	lame -b 320 "$i" "$destination/$file.mp3"
done

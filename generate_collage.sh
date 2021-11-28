mkdir -p thb

for x in *jpg
do
	if [ ! -f thb/$x ]
	then
		convert $x -geometry 200x200 thb/$x
	fi
	echo $x
done

#montage -background '#336699' -frame 5 thb/*jpg out.png
#montage -label %f -background '#336699' -tile 8x thb/*jpg out.png
montage -background '#DCDCDC' -tile 8x thb/*jpg out.png

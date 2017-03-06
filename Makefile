run: transform.py script
	python transform.py < script &> /dev/null

gif: transform.py animscript
	-mkdir anim
	python transform.py < animscript
	eval $("convert -delay 10 -loop 0 anim/anim{0..71}.ppm rot.gif")
	rm -rf anim

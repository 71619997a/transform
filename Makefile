SHELL := /bin/bash

run: transform.py script_dw
	python transform.py < script_dw

gif: transform.py animscript
	-mkdir anim
	python transform.py < animscript
	convert -delay 10 -loop 0 anim/anim{0..71}.ppm rot.gif
	rm -rf anim

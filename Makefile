cv.pdf: cv.tex
	xelatex cv.tex
	xelatex cv.tex
	rm -f cv.aux \
	      cv.log \
	      cv.aux \
		  cv.out

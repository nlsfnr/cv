all: cv.pdf cv2.pdf


cv.pdf: cv.tex
	xelatex cv.tex
	rm -f cv.log \
		  cv.out


cv2.pdf: cv2.tex
	pdflatex cv2.tex
	rm -f cv2.log \
		  cv2.out

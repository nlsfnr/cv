NAME=cv
AUX_DIR=.aux


all: $(NAME).pdf

$(NAME).pdf: $(NAME).tex
	mkdir --parents $(AUX_DIR)
	pdflatex \
		-output-directory $(AUX_DIR) \
		-jobname $(NAME) \
		$(NAME) && \
	mv $(AUX_DIR)/$(NAME).pdf ./

clean:
	rm -rf \
		$(NAME).pdf \
		$(AUX_DIR)

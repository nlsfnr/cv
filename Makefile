PYTHON=/usr/bin/env python3
NAME=cv
GENERATED=generated.tex
AUX_DIR=.aux


all: $(NAME).pdf

$(GENERATED): templates/* *.yaml *.py
	$(PYTHON) ./build.py \
		--output=$(GENERATED) \
		--data data.yaml

$(NAME).pdf: $(GENERATED)
	mkdir -p $(AUX_DIR)
	pdflatex \
		-output-directory $(AUX_DIR) \
		-jobname $(NAME) \
		$(GENERATED) && \
	mv $(AUX_DIR)/$(NAME).pdf ./

clean:
	rm -rf \
		$(NAME).pdf \
		$(AUX_DIR) \
		$(GENERATED)

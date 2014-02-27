ENTRIES=wabi-outline

all: $(patsubst %, %.pdf, $(ENTRIES))

%.pdf: %.rst
	pandoc $< -o $@

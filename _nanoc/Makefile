.PHONY: view compile clean install

view: compile
	nanoc view

compile:
	nanoc compile

clean:
	find ../ -maxdepth 1 \
		! -name _nanoc \
		! -name .gitignore \
		! -name .git \
		! -name .. \
		-type f \
		-exec rm -i {} \;
	find ../ -maxdepth 1 \
		! -name _nanoc \
		! -name .gitignore \
		! -name .git \
		! -name .. \
		-type d \
		-exec echo {} \; \
		-exec rm -rI {} \;

install: clean compile
	cp -r output/* ../

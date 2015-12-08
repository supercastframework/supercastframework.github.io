.PHONY: doc
doc:
	rm -rf supercast doc
	git clone https://github.com/supercastframework/supercast.git
	make -C supercast edoc
	mv supercast/doc doc

clean:
	rm -rf supercast

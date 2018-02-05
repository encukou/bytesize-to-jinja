all: bytesize_icons.jinja

bytesize_icons.jinja: bytesize-symbols.svg bytesize-to-jinja.py
	./bytesize-to-jinja.py < $< > $@

bytesize-symbols.svg:
	wget https://github.com/danklammer/bytesize-icons/raw/master/dist/bytesize-symbols.svg

clean:
	rm *.svg *.jinja

.PHONY: clean all

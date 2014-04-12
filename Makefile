CC=gcc
CFLAGS=-I"termbox src" -Werror
TERMBOXFILES=termbox/termbox.c termbox/utf8.c

all: src/main.c 
	@mkdir -p bin
	$(CC) -o bin/tinyrl src/main.c $(TERMBOXFILES) $(CFLAGS)

clean:
	rm -rf bin/tinyrl

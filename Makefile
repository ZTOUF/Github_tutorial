.PHONY: build clean
build: hello_world
hello_world: obj/main.o
	gcc obj/main.o -o bin/hello_world
main.o: src/ain.c
	gcc -O2 -DNDEBUG -c src/main.c -o obj/main.o
clean:
	rm -rf obj/main.o bin/hello_world

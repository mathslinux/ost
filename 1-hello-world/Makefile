all: bootstrap.img

bootstrap.img: bootstrap.o
	ld --oformat binary -N -e start -Ttext 0x7c00 -o $@ $<

.s.o:
	as -a $< -o $@ > bootstrap.map

clean:
	rm -f bootstrap.img
	rm -f bootstrap.o
	rm -f bootstrap.map

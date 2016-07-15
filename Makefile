OBJECTS=qrencode.o qrinput.o bitstream.o qrspec.o rscode.o split.o mask.o qrenc.o
CC = gcc
CFLAGS = -g -Wall
INCFLAGS =-I/usr/include/libpng12
LDFLAGS = -Wl,-rpath,/usr/local/lib
LIBS =-lpng12

all:$(OBJECTS)
	$(CC) -o QRCoder $(OBJECTS) $(LDFLAGS) $(LIBS)

.SUFFIXES:
.SUFFIXES:	.c .cc .C .cpp .o

.c.o:
	$(CC) -o $@ -c $(CFLAGS) $< $(INCFLAGS)
clean:
	rm -f *.o


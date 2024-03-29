CC=gcc
CCFLAGS=-Wall
LDFLAGS=
SOURCES=$(src *.c)
OBJECTS=$(SOURCES:.c=.o)
TARGET=build/LuaGrok

all: $(TARGET)

$(TARGET): $(OBJECTS)
		$(CC)	-o	$@	$^	$(LDFLAGS) 

%.o: %.c %.h
		$(CC)	$(CCFLAGS)	-c	$<

%.o: %.c
		$(CC)	$(CCFLAGS)	-c	$<

clean:
		rm	-f	*.o	$(TARGET)
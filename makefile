NAME = TBD

CFLAGS = -W -Wall -Wextra

SRC = $(wildcard ./src/*.c) \
		$(wildcard ./src/func/*.c)

OBJ = $(SRC:.c=.o)

all: build clean

build: $(OBJ)
	@gcc $(CFLAGS) $(OBJ) -o ./out/$(NAME)

clean:
	@if exist ./src/*.o del /Q src\*.o
	@if exist ./src/func/*.o del /Q src\func\*.o

test: $(SRC) $(OBJ)
	@echo $(SRC)
	@echo $(OBJ)
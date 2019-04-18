NAME_C = Colleen
NAME_G = Grace
NAME_S = Sully

CC = gcc
FLAG = -Wall -Wextra -Werror

SRC_C = Colleen.c
SRC_G = Grace.c
SRC_S = Sully.c

OBJ_C = Colleen.o
OBJ_G = Grace.o
OBJ_S = Sully.o

all: $(NAME_C) $(NAME_G) $(NAME_S)

$(NAME_C): $(OBJ_C)
	gcc $(FLAG) $(SRC_C) -o $(NAME_C)

$(NAME_G): $(OBJ_G)
	gcc $(FLAG) $(SRC_G) -o $(NAME_G)

$(NAME_S): $(OBJ_S)
	gcc $(FLAG) $(SRC_S) -o $(NAME_S)

clean:
	rm -rf *.o

fclean: clean
	rm -rf  $(NAME_C) $(NAME_G) $(NAME_S) Sully_* Grace_kid.c

re: fclean all

.PHONY: re all clean fclean

NAME_C = Colleen
NAME_G = Grace
NAME_S = Sully

CC = nasm
FLAG = -f macho64

SRC_C = Colleen.s
SRC_G = Grace.s
SRC_S = Sully.s

OBJ_C = Colleen.o
OBJ_G = Grace.o
OBJ_S = Sully.o

all: $(NAME_C) $(NAME_G) $(NAME_S)

$(NAME_C): 
	nasm -f macho64 $(SRC_C)
	gcc $(OBJ_C) -o $(NAME_C)

$(NAME_G): 
	nasm -f macho64 $(SRC_G)
	gcc $(OBJ_G) -o $(NAME_G)

# $(NAME_S): $(OBJ_S)
# 	nasm $(FLAG) $(SRC_S) -o $(NAME_S)

clean:
	rm -rf *.o

fclean: clean
	rm -rf  $(NAME_C) $(NAME_G) $(NAME_S)

re: fclean all

.PHONY: re all clean fclean
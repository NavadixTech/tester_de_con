##
## EPITECH PROJECT, 2025
## B-DOP-200-MLN-2-1-chocolatine-sacha.lamour
## File description:
## Makefile
##

CC = gcc
CFLAGS = -Wall -Wextra -Werror
SRC = main.c
OBJ = $(SRC:.c=.o)
EXEC = my_radar

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(EXEC)

re: fclean all

tests_run:
	$(MAKE) -C tests run

.PHONY: all clean fclean re tests_run

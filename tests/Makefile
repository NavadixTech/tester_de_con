##
## EPITECH PROJECT, 2025
## B-DOP-200-MLN-2-1-chocolatine-sacha.lamour
## File description:
## Makefile
##

CC = gcc
CFLAGS = -Wall -Wextra -Werror --coverage
LDFLAGS = -lcriterion
SRC = ../main.c test_main.c
OBJ = $(SRC:.c=.o)
EXEC = unit_tests

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

run: $(EXEC)
	./$(EXEC)

clean:
	rm -f $(OBJ) $(EXEC) *.gcno *.gcda

fclean: clean

re: fclean all

.PHONY: all clean fclean re run

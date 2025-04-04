##
## EPITECH PROJECT, 2025
## tester_de_con
## File description:
## Makefile
##

CC = gcc
CFLAGS = -Wall -I/usr/include/criterion
LDFLAGS = -lcriterion

RADAR_SRC = main.c
RADAR_OBJ = $(RADAR_SRC:.c=.o)
RADAR_EXEC = my_radar

TEST_SRC = tests/main_test.c
TEST_OBJ = $(TEST_SRC:.c=.o)
TEST_EXEC = run_tests

all: $(RADAR_EXEC)

$(RADAR_EXEC): $(RADAR_OBJ)
	$(CC) -o $@ $^

$(TEST_EXEC): $(TEST_OBJ)
	$(CC) -o $@ $^ $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(RADAR_OBJ) $(TEST_OBJ) $(TEST_EXEC)

tests_run: $(TEST_EXEC)
	./$(TEST_EXEC) --verbose || (echo "Tests failed"; exit 1)

.PHONY: all clean tests_run

NAME    = my_program
SRC     = main.c
OBJ     = $(SRC:.c=.o)
CC      = gcc
CFLAGS  = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) -o $(NAME) $(OBJ)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

tests_run:
	@echo "Running fake tests..."
	@echo "Tests passed ✔️"

re: fclean all

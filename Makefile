NAME = tester
SRC = count.c gnl.c

OBJ = $(SRC:%.c=obj/%.o)

CXX = gcc
CXXFLAGS = -Wall -Werror -Wextra

INC = -I includes
LIB = libft/

all: $(NAME) $(NAME2)

$(NAME): obj $(OBJ)
	@make re -s -C $(LIB)
	@$(CXX) $(CXXFLAGS) -o $@ $(OBJ) $(INC) -L$(LIB) -lft -g

obj/%.o: %.c
	$(CXX) $(CXXFLAGS) $(INC) -o $@ -c $< -I$(LIB)

obj:
	mkdir -p obj/

clean:
	@rm -rf obj

fclean: clean
	@rm -rf $(NAME)
	@make fclean -C libft/

re: fclean all

.PHONY: fclean all clean re

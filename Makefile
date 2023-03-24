NAME = hoge.a
SRCS = a.c b.c
OBJS = $(SRCS:%.c=%.o)
CC   = cc
CFLAGS =  -Wall
INC  = -I./include

.DEFAULT_GOAL := all

all: $(NAME)

$(NAME): $(OBJS)
	@$(CC) $(CFLAGS) $(INC) $(OBJS) -o $(NAME)

.c.o:
	@$(CC) $(CFLAGS) $(INC) -c $< -o $@

.PHONY: clean
clean:
	@rm -f $(OBJS)

fclean: clean
	@rm -f $(NAME)

re: fclean all

NAME = hoge.a
SRCS = a.c b.c
OBJS = $(SRCS:%.c=%.o)
CC   = cc
CFLAGS =  -Wall
INC  = -I./include

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) $(INC) $(OBJS) -o $(NAME)

.c.o:
	$(CC) $(CFLAGS) $(INC) -c $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

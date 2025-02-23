# Root-level Makefile

.PHONY: all clean fclean re

all:
	$(MAKE) -C libft
	$(MAKE) -C get_next_line

clean:
	$(MAKE) -C libft clean
	$(MAKE) -C get_next_line clean

fclean:
	$(MAKE) -C libft fclean
	$(MAKE) -C get_next_line fclean

re: fclean all

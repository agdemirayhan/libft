# Root-level Makefile

# Compiler settings
CC      = cc
CFLAGS  = -Wall -Wextra -Werror
AR      = ar
ARFLAGS = rcs
RM      = rm -f

# Directories
LIBFT_DIR = libft
GNL_DIR   = get_next_line

# Manually listed libft source files
LIBFT_SRCS = $(LIBFT_DIR)/ft_isalpha.c \
	$(LIBFT_DIR)/ft_isdigit.c \
	$(LIBFT_DIR)/ft_isalnum.c \
	$(LIBFT_DIR)/ft_isascii.c \
	$(LIBFT_DIR)/ft_isprint.c \
	$(LIBFT_DIR)/ft_strlen.c \
	$(LIBFT_DIR)/ft_memset.c \
	$(LIBFT_DIR)/ft_bzero.c \
	$(LIBFT_DIR)/ft_memcpy.c \
	$(LIBFT_DIR)/ft_memmove.c \
	$(LIBFT_DIR)/ft_strlcpy.c \
	$(LIBFT_DIR)/ft_strlcat.c \
	$(LIBFT_DIR)/ft_toupper.c \
	$(LIBFT_DIR)/ft_tolower.c \
	$(LIBFT_DIR)/ft_strchr.c \
	$(LIBFT_DIR)/ft_strrchr.c \
	$(LIBFT_DIR)/ft_memchr.c \
	$(LIBFT_DIR)/ft_memcmp.c \
	$(LIBFT_DIR)/ft_strnstr.c \
	$(LIBFT_DIR)/ft_atoi.c \
	$(LIBFT_DIR)/ft_calloc.c \
	$(LIBFT_DIR)/ft_substr.c \
	$(LIBFT_DIR)/ft_strdup.c \
	$(LIBFT_DIR)/ft_itoa.c \
	$(LIBFT_DIR)/ft_putchar_fd.c \
	$(LIBFT_DIR)/ft_putstr_fd.c \
	$(LIBFT_DIR)/ft_putnbr_fd.c \
	$(LIBFT_DIR)/ft_putendl_fd.c \
	$(LIBFT_DIR)/ft_strjoin.c \
	$(LIBFT_DIR)/ft_strtrim.c \
	$(LIBFT_DIR)/ft_strncmp.c \
	$(LIBFT_DIR)/ft_split.c \
	$(LIBFT_DIR)/ft_strmapi.c \
	$(LIBFT_DIR)/ft_striteri.c

# Manually listed get_next_line source files
GNL_SRCS = $(GNL_DIR)/get_next_line.c \
	$(GNL_DIR)/get_next_line_utils.c

# Corresponding object files
LIBFT_OBJS = $(LIBFT_SRCS:.c=.o)
GNL_OBJS   = $(GNL_SRCS:.c=.o)

# Output libraries
LIBFT_LIB = libft.a
GNL_LIB   = libget_next_line.a

.PHONY: all clean fclean re

all: $(LIBFT_LIB) $(GNL_LIB)

# Build libft static library
$(LIBFT_LIB): $(LIBFT_OBJS)
	$(AR) $(ARFLAGS) $@ $^

# Build get_next_line static library
$(GNL_LIB): $(GNL_OBJS)
	$(AR) $(ARFLAGS) $@ $^

# Compile libft source files
$(LIBFT_DIR)/%.o: $(LIBFT_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

# Compile get_next_line source files
$(GNL_DIR)/%.o: $(GNL_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(LIBFT_OBJS) $(GNL_OBJS)

fclean: clean
	$(RM) $(LIBFT_LIB) $(GNL_LIB)

re: fclean all

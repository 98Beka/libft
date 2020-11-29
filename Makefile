# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ehande <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/06 20:41:14 by ehande            #+#    #+#              #
#    Updated: 2020/11/14 00:48:13 by ehande           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
NAME = libft.a

H = libft.h

COMPILER = gcc

FLAGS = -Wall -Wextra -Werror

SRC =   \
        ft_atoi.c \
        ft_bzero.c \
        ft_calloc.c \
        ft_isalnum.c \
        ft_isalpha.c \
        ft_isascii.c \
        ft_isdigit.c \
        ft_isprint.c \
        ft_memccpy.c \
        ft_memchr.c \
        ft_memcmp.c \
        ft_memcpy.c \
        ft_memmove.c \
        ft_memset.c \
        ft_split.c \
        ft_strchr.c \
        ft_strdup.c \
        ft_strjoin.c \
        ft_strlcat.c \
        ft_strlcpy.c \
        ft_strlen.c \
        ft_strncmp.c \
        ft_strnstr.c \
        ft_strrchr.c \
        ft_strtrim.c \
        ft_substr.c \
        ft_tolower.c \
        ft_toupper.c \
	ft_itoa.c\
	ft_strmapi.c\
	ft_putchar_fd.c\
	ft_putstr_fd.c\
	ft_putendl_fd.c\
	ft_putnbr_fd.c\

 SRC_BONUS = \
         ft_lstadd_back.c \
         ft_lstadd_front.c \
         ft_lstclear.c \
         ft_lstdelone.c \
         ft_lstiter.c \
         ft_lstlast.c \
         ft_lstmap.c \
         ft_lstnew.c \
         ft_lstsize.c \

OBJ = $(SRC:%.c=%.o)

OBJ_BONUS = $(SRC_BONUS:%.c=%.o)

all: $(NAME)

%.o : %.c $(H)
	@$(COMPILER) $(FLAGS) -c $< -o $@
	@echo "Compiled $@"

$(NAME): $(OBJ)
	@ar rcs $(NAME) $(OBJ)

bonus: $(OBJ_BONUS)
	@ar rcs $(NAME) $(OBJ_BONUS)
        
t:
	gcc $(FLAGS) main.c ft_*c -o tst

clean:
	@rm -f $(OBJ) $(OBJ_BONUS)
	@echo "Libft's object files cleaned"

fclean:	clean
	@rm -f $(NAME) libft.so
	@echo "$(NAME) cleaned"

re: fclean all

.PHONY: clean fclean all ref *.o

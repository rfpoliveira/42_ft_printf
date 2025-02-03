# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rpedrosa <rpedrosa@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/06 16:13:42 by rpedrosa          #+#    #+#              #
#    Updated: 2024/11/06 16:19:55 by rpedrosa         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

###Files###

SRCS = ft_printf.c r_put_hex.c r_putnbr.c r_putstr.c r_putunsig.c r_put_ptr.c


OBJS = $(SRCS:.c=.o)

NAME = libftprintf.a

###ALIAS###

RM = rm -f
AR = ar rcs
CFLAGS = -Wall -Werror -Wextra

LIBFT = $(LIBFTDIR)/libft.a
LIBFTDIR = libft

###Rules###

all: $(NAME)

$(NAME): $(OBJS) $(LIBFT)
	$(AR) $(NAME) $(OBJS) $(LIBFTDIR)/*.o

$(LIBFT): $(LIBFTDIR)
	$(MAKE) -C $(LIBFTDIR)
	
%.o: %.c
	cc $(CFLAGS) -o $@ -c $<

clean: 
	$(RM) $(OBJS)
	$(MAKE) clean -C $(LIBFTDIR)

fclean: clean
	$(RM) $(NAME)
	$(MAKE) fclean -C $(LIBFTDIR)

re: fclean all

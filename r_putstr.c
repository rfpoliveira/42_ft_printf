/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   r_putstr.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rpedrosa <rpedrosa@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/07 16:29:21 by rpedrosa          #+#    #+#             */
/*   Updated: 2024/11/07 16:32:59 by rpedrosa         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	r_putstr(char *s)
{
	int	i;

	if (!s)
	{
		write(1, "(null)", 6);
		return (6);
	}
	i = -1;
	while (s[++i])
		write(1, &s[i], 1);
	return (ft_strlen(s));
}

#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include "libft/libft.h"
#include "gnl.h"

int		main(int ac, char **av)
{
	int 	i = 0;
	int 	total = 0;
	int 	fd;
	char	*line = NULL;

	if (ac == 1)
		return (0);
	fd = open(av[1], O_RDONLY);
	while (get_next_line(fd, &line))
	{
		total += ft_atoi(line);
		i++;
	}
	printf("average : %d/%d = %d\n", total, i, total/i);
	return (0);
}

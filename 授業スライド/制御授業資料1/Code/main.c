#include <stdio.h>

int main()
{
    char *filename = "text.txt";
    FILE *fp = fopen(filename, "r");

    if (fp == NULL)
    {
        printf("Error: could not open file %s", filename);
        return 1;
    } else {
		printf("%s file opened!\n", filename);
	}

    // close the file
    fclose(fp);

    return 0;
}

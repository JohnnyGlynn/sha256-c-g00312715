#include <stdio.h>
 
int main() {
    FILE *file;
    char filepath[255], out;

    printf("Enter a file path: ");
    scanf("%s", &filepath);

    file = fopen(&filepath, "r");
    if (file == NULL) 
    { 
        printf("Cannot open file \n"); 
        return 0;
    } 

    printf("Ive opened a file\n");
    fscanf(file,"%c", &out);

    printf("Value of %c \n", out);

    fclose(file); 

    return 0;
}
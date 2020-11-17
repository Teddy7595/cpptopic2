#include <stdio.h>

struct FILELOGS
{   
    FILE* AddLogInQueue(char title[], char value[])
    {
        FILE* file = fopen("LOG_SYSTEN.txt", "ab");
        fprintf(file, title);
        fprintf(file, "\n");
        fprintf(file, value);
        fprintf(file, "\n\n");
        fclose(file);
        return file;
    }

    void GetLogInFile()
    {
        //coming soon...
    }

}logs;
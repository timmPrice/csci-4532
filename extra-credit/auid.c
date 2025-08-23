#include <stdio.h>

const int auid = 912171211;

int binary(int current) 
{
    if (current == 0) {
        return 0;
    }
    return current % 2 + 10 * binary(current / 2);
}

int main(){
    printf("%i\n", auid);
    printf("%d\n", binary(auid));
    return 0;
}

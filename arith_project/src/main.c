#include <stdio.h>
#include "arithmetic.h"

int main() {
    int x=10, y=5;
    printf("add=%d\n", add(x,y));
    printf("subtract=%d\n", subtract(x,y));
    printf("multiply=%d\n", multiply(x,y));
    printf("divide=%.2f\n", divide(x,y));
    return 0;
}

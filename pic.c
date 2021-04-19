#include <stdio.h>

int main() {
    int r[28000 + 1];
    int i, k;
    int b, d;
    int c = 0;

    for (i = 0; i < 28000; i++) {
        r[i] = 2000;
    }

    for (k = 28000; k > 0; k -= 14) {
        d = 0;

        i = k;
        for (;;) {
            d += r[i] * 1000;
            b = 2 * i - 1;

            r[i] = d % b;
            d /= b;
            i--;
            if (i == 0) break;
            d *= i;
        }
        printf("%.4d", c + d / 1000);
        c = d % 1000;
    }

    return 0;
}


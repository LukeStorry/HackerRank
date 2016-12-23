//Input consists of the following space-separated values: int, long, long long, char, float, and double, respectively.
//Print each element on a new line in the same order it was received as input. Note that the floating point value should be correct up to 3 decimal places and the double to 9 decimal places.
#include <iostream>
#include <cstdio>
using namespace std;

int main() {
    int i;
    long l;
    long long ll;
    char c;
    float f;
    double d;
    scanf("%d %ld %lld %c %f %lf", &i, &l, &ll, &c, &f, &d);
    printf("%d\n%ld\n%lld\n%c\n%.3f\n%.9lf", i, l, ll, c, f, d);
    return 0;
}

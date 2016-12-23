#include <iostream>
#include <cstdio>
using namespace std;

int main() {
    int a, b;
    string nums[10] = {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
    cin >> a >> b;
    
    for (int n = a; n <= b; n++) {
        if ( 1<=n && n<=9 ) {
            cout << nums[n] << "\n";
        } else if (n%2) {
            cout << "odd\n";
        } else {
            cout << "even\n";
        }
    }
    return 0;
}

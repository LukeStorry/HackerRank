//Print the  integers of the array in the reverse order in a single line separated by a space.

#include <iostream>
using namespace std;


int main() {
    int n;
    cin >> n;
    int arr[n];
    
    for (int i=0; i<n; i++) {
        cin >> arr[i];
    }
    for (int i=n-1; i>=0; i--) {
        cout << arr[i] << " ";
    }
    return 0;
}

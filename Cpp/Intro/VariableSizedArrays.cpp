#include <iostream>
using namespace std;

int main() {
    int numArrays;
    int numQueries;

    cin >> numArrays >> numQueries;

    //input arrays
    int** arr = new int*[numArrays];
    for(int i = 0; i < numArrays; i++){
        int size;
        cin >> size;
        arr[i] = new int[size];
        for(int j = 0; j < size; j++)
            cin >> arr[i][j];
    }

    //output queries
    for(int query = 0; query < numQueries; query++) {
        int i, j;
        cin >> i >> j;
        cout << arr[i][j] << endl;
    }
        
    return 0;
}

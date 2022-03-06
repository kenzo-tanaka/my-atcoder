#include <iostream>
using namespace std;

int main() {
    string a, b;
    cin >> a >> b;
    string c = a + b;

    int asize = a.size();
    int bsize = b.size();

    int m = max(asize, bsize);

    cout << m << endl;
    return 0;
}
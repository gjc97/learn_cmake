#include <iostream>
// #include "src/hello_world.h"
using namespace std;
void HelloFunc()
{
    cout << "hello world !" << endl;
}
int main(int argc, char const *argv[])
{
    void HelloFunc();
    return 0;
}

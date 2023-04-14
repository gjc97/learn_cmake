#  1.编译

## 1. 编译（*compile*）

命令： 1

```c++
g++ <filename>
```

***

1. 词法分析
2.  语法分析
3.  生成中间代码
4.  代码优化
5. 生成目标代码

***

## 2.链接（link)

**用于多个源文件的链接**，每个源文件之间有依赖关系

源文件1(hello_world.cpp)：输出源文件2中的变量以及调用源文件2中的函数

```c++
#include <iostream>
using namespace std;

int main(int argc, char const *argv[])
{
    extern double pi; //声明
    double return_num();//声明
    cout << "pi = " << pi <<endl;
    cout << "return = " << return_num() << endl;  
    return 0;
}

```

**需要在源文件1中声明以下源文件2中的变量和函数**

***

源文件2：(print.cpp)定义源文件1中的变量和函数

```c++
double pi = 3.14;

double return_num()
{
   return pi;
}
```

### (1) 编译命令

1. 自动链接

~~~c++
g++ <filename1> <filename2>
~~~

编译结束后仍会正常生成    ==a.out==

2. 单独编译出.o的中间文件

**print.cpp没有main函数，直接使用g++ print.cpp报错，需要添加-c(compile)**

```bash
g++ -c print.cpp  #编译出print.o文件
g++ -c hello_world.cpp #编译出hello_world.o文件
g++ hello_world.o print.o #链接：编译出a.out可执行文件
```

** ==-c==表示编译（compile)	Compile or assemble the source files, but do not link.  The linking
           stage simply is not done.  The ultimate output is in the form of an
           object file for each source file. 

只编译或者汇编源文件，不会进行链接，最终生成每个源文件的目标文件（.o)

***

==g++后边跟的常见参数==

1. -l和-L：链接的库文件/链接的库文件所在目录

```bash
g++ main.cpp -o m1 -I/usr/local/include/opencv4/ -I/usr/local/cuda/targets/x86_64-linux/include/ -L /usr/local/lib/libopencv*.so -L /usr/lib/x86_64-linux-gnu/libopencv*.so
```



编译器默认寻找放在/lib和/usr/lib和/usr/local/lib里的库直接用-l参数就能链接==-l后紧跟链接的库，没有空格==

若库没有在这三个文件夹，使用-L制定库所在的文件夹

如自定义库libtest.so放在/aaa/bbb/ccc文件夹，使用

```bash
-L /aaa/bbb/ccc -ltest
```

另外，大部分libxxxx.so只是一个链接，以RH9为例，比如libm.so它链接到/lib/libm.so.x，/lib/libm.so.6又链接到/lib/libm-2.3.2.so，

如果没有这样的链接，还是会出错，因为ld只会找libxxxx.so，所以如果你要用到xxxx库，而只有libxxxx.so.x或者libxxxx-x.x.x.so，做一个链接就可以了ln -s libxxxx-x.x.x.so libxxxx.so


***

***

2. -I参数(大写i):指定头文件目录

/usr/include目录一般是不用指定的，自定义头文件需要使用

```bash
-I /myinclude
I. #指定头文件在当前目录
```

# 3. 三种编译目标

## 1. 可执行文件

**必须有main，所符号都能找到**

## 2.动态链接库

**所有符号都可以找到；可以导出符合作为拼图的突出部分（作为库的接口）；运行时共享内存映射。**

1. .cpp文件编译成动态库

   print.cpp代码

   ```c++
   #include <iostream>
   double pi =3.14;
   
   double return_num()
   {
       return pi;
   }
   ```

   print.h头文件

   ```c++
   #ifndef _PRINT_H
   #define _PRINT_H
   
   double pi =3.14;
   double return_num();
   
   #endif
   ```

   ```bash
   g++ -fPIC -shared print.cpp -o print.so  #编译出动态库
   g++ -I ./include -fPIC -shared print.cpp -o print.so #如果使用了头文件，则使用-I包含头文件路径
   g++ -fPIC -shared <filename> -o <libraryname>
   ```

   **-fPIC，-shared：固定格式**

   

2. 主文件调用动态库

   hello_world.cpp

   ```c++
   #include "print.h"//包含调用的库的头文件
   #include <iostream>
   using namespace std;
   
   int main(int argc, char const *argv[])
   {
       // extern double pi;
       // double return_num();
       cout << "pi = " << pi <<endl;
       
       return 0;
   }
   ```

3. 主文件调用编译出来的动态库

   编译命令(==链接过程==)

   **-ldl 固定用法 load dynamic lib**

   ```c++
   g++ -I ./include  print.so hello_world.cpp  #手动制定动态库
   g++ hello_world.cpp -ldl -o hello_world.out #使用-ldl自动调用动态库
   g++ -I ./include  hello_world.cpp -ldl -o hello_world.out #包含头文件目录
   ```

## 3. 静态链接库 

**大号中间文件（.o文件）；**

**可以缺少符号；**

**编译时代码附加在被依赖目标上；**

### Static Library:
1- Make a new directory named "staticLibrary_Lab".
2- In side it make 2 directories:
	a- Lib: which has all source files of library functionalities.
	b- Include: which has all header files of library functionalities.
3- Write your application in main.c and include all header files.
	
## Steps:
1- In Lib diectory:
	a- Make object file of all library source files
		# gcc -c *.c -I ./Include
	b- Archive them in a static Library named "liboperation.a"
		ar rcs liboperation.a addition.o  division.o  modulus.o  multiplication.o subtraction.o
2- Make object file of your application
	gcc -c main.c -I ./Include
3- link your application with the static library
	gcc -o main.exe main.o Lib/liboperation.a -static
4- Run ./main.exe


### Dynamic Library:
1- Make a new directory named "dynamicLibrary_Lab".
2- In side it make 2 directories:
	a- Lib: which has all source files of library functionalities.
	b- Include: which has all header files of library functionalities.
3- Write your application in main.c and include all header files.
	
## Steps:
1- In Lib diectory:
	a- Make object file of all library source files
		gcc -c -g -Wall -fPIC -I ../Include  *.c 
	b- Make the shared Library named "liboperation.so"
		gcc -shared -o liboperation.so addition.o  division.o  modulus.o  multiplication.o  subtraction.o
2- Make object file of your application
	gcc main.c -L./Lib -loperation -o main.exe -I ./Include
4- Run ./main.exe it will give an error as we should put the path in rpath so system loader will get the location of the library
	gcc -L./Lib -Wl,-rpath=./Lib -Wall -o main main.c -loperation -I ./Include



### Comparisons
## ldd main.exe
	In static linking: no output as it doen't require any shared library.
	In dynamic linking: will list all the required shared libraries.
## file main.exe
	In static linking: shows that it is statically linked.
	In dynamic linking: shows that it is dynamically linked.
## objdump -t main.exe
	In static linking: there is no "UND" in its symbol table.
	In dynamic linking: there exists "UND" in its symbol table for the functions from library .
## du -sh main.exe
	In static linking: the size of the executable is 880k.
	In dynamic linking: the size of the executable is 16k.

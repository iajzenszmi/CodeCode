/* array of Functions
Labels: Arrays, Functions, Miscellaneous, Pointers

In the article Pointers to Function, we saw how pointers can be made
to point at functions and hence can be used to invoke them.

By far the most important use of pointers to functions is to have arrays of functions. 
This can be achieved as stated below

You already know that we can have arrays of pointers and pointers 
can be made to point at functions. 
So combining both we can have array of pointers to functions put differently, 
we can have array of functions.

The example program below demonstrates how we can have array of functions; 
please note that this concept is mostly used in writing compilers and interpreters,
so you shouldn’t expect the program to do anything serious or useful!
*/
  // Program to demonstrate
  // array of functions
  #include <iostream>

  // -- FUNCTION PROTOTYPES --
  void func1();
  void func2();
  void func3();
  void func4();
  void func5();
  // -- ENDS --

  int main()
  {
   // notice the prototype
   void (*ptr[5])();

   // arrays are made to point
   // at the respective functions
   ptr[0]=func1;
   ptr[1]=func2;
   ptr[2]=func3;
   ptr[3]=func4;
   ptr[4]=func5;

   // now the array elements
   // point to different functions
   // which are called just like
   // we access the elements of
   // an array
   for(int i=0;i<5;i++)
     (*ptr[i])();
}  

  // -- FUNCTIONS DEFINITION --
  #include <iostream>
  void func1()
  {
   std::cout << "Called Func1!\n";
  };

  void func2()
  {
   std::cout<<"Called Func2!\n";
  };

  void func3()
  {
   std::cout<<"Called Func3!\n";
  }

  void func4()
  {
   std::cout<<"Called Func4!\n";
  }

  void func5()
  {
   std::cout<<"Called Func5!\n";
  }

  // -- ENDS --



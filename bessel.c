/*
Skip to content

    Archives Compu geek
    Physics
    My Blog Word-a-Geek
    DU Exclusive
    DFT
    CrysX

Search for:
Bessel Function Series – C PROGRAM
Aug 30, 2017
Manas Sharma

In this post we will write a C program to calculate the Bessel Functions of the first kind.

We will use the series representation of Bessel functions, and use the concept of previous posts to calculate the sum of infinite series, and thus find the values.

The series is given as:
J_n(x)=\left(\frac{x}{2}\right)^n\sum_{k=0}^\infty\frac{(-1)^k(\frac{x^2}{4})^k}{k!(n+k)!}

As you can notice, we would need to calculate factorials for the series sum evaluation.
We already wrote a program for that here.
So we will just use the function to calculate and return the factorial.

If you haven’t already checked out my past posts on Series Summation then you can read the following articles, before you move on with this post.
Sine Series(Finite) – C Program
Sine Series(Infinite) – C Program
Cosine Series(Infinite) – C Program

If we remove the \left(\frac{x}{2}\right)^n of the definition given above, then we get the series:
S=\sum_{k=0}^\infty\frac{(-1)^k(\frac{x^2}{4})^k}{k!(n+k)!}

So we can simply calculate the sum of this series and then multiply the result by \left(\frac{x}{2}\right)^n , to get the value of the Bessel Function.

The first term of the new series is:
t_0=\frac{1}{n!}

and the ratio of consecutive terms is:
R=\frac{t_k}{t_{k-1}}=-\frac{x^2/4}{k(n+k)}
Note: k starts from 1 for our ratio to work.

Now, that you have the above information, the Bessel Function for a given value of n and, correct upto a certain number of decimal places can be easily calculated. These values can be written down to a file and then they can be plotted using a software like Gnuplot.
PROGRAM:*/
/*****************************
 ******BESSEL FUNCTION********
 ***********SERIES************
 ****************************/
#include<stdio.h>
#include<math.h>
double factorial(int n){
  int i;
  double fact=1;
  for(i=n;i>=1;i--){
    fact=fact*i;
  }
  return fact;
}
int main(){
    FILE *fp=NULL;
    fp=fopen("besselSeriesPlotn0.txt","w");
    double t0,t1,R,sum,x,eps;
    int n;
    printf("Enter the value of n: ");
    scanf("%d",&n);
    printf("Enter the desired accuracy: ");
    scanf("%lf",&eps);
    for(x=0;x<=10;x=x+0.1){
        int k=1;
        //Initialize First Term
        t0=1/factorial(n);
        //Make sum equal to the first term
        sum=t0;     
        do{
            //Find the ratio of the second term to the first term using already known relation
            R=-(x*x/4)/(k*(n+k));
            //Calculate the second term
            t1=R*t0;
            //find the new sum
            sum=sum+t1;
            t0=t1;
            k++;
            //keep on summing terms until the required accuracy is reached
        }while(fabs(t1/sum)>eps);
        sum=sum*pow(x/2,n);
        printf("%lf\t%lf\n",x,sum);
    }
     
}
/*
The above program will prompt the user to enter the value of n and the accuracy desired, and then it will write down the data-points to the text file 'besselSeriesPlotn0.txt'.
Then this file can be plotted using Gnuplot command:
->plot 'besselSeriesPlotn0.txt' w l
Programmer, can change the name of the file to be written for different values of n and then plot and see the results.
OUTPUT:

The following are the output results for a few sample runs of the program:

for n=0:
Gnuplot Output:

for n=1:
Gnuplot Output:

for n=2:
Gnuplot Output:

In the following image, I have plotted many Bessel functions simultaneously, by compiling the outputs for different n :

Hope, you found this post helpful.
If you have any questions/doubts leave a comment down below.
Related:

Sine Series(Finite) – C Program
Sine Series(Infinite) – C Program
Cosine Series(Infinite) – C Program
Problems on Series Sum – C
References:

http://mathworld.wolfram.com/BesselFunctionoftheFirstKind.html
https://en.wikipedia.org/wiki/Bessel_function
Manas Sharma
PhD researcher at Friedrich-Schiller University Jena, Germany. I'm a physicist specializing in theoretical, computational and experimental condensed matter physics. I like to develop Physics related apps and softwares from time to time. Can code in most of the popular languages. Like to share my knowledge in Physics and applications using this Blog and a YouTube channel.
Share this:

    Click to share on Facebook (Opens in new window)Click to share on Twitter (Opens in new window)Click to share on Google+ (Opens in new window)Click to share on WhatsApp (Opens in new window)Click to share on Pinterest (Opens in new window)Click to share on Reddit (Opens in new window)Click to share on LinkedIn (Opens in new window)Click to share on Skype (Opens in new window)Click to email this to a friend (Opens in new window)Click to print (Opens in new window)Click to share on Tumblr (Opens in new window)Click to share on Pocket (Opens in new window)Click to share on Telegram (Opens in new window)

Like this:
Loading...
Related
Numerical Root Finding Exercises - C Programming
Numerical Root Finding Exercises - C Programming

September 1, 2017

In "C Programs"
Problems on Infinite Series Sum - C PROGRAMMING
Problems on Infinite Series Sum - C PROGRAMMING

August 31, 2017

In "C Programs"
Sine Series Finite Sum - C PROGRAM
Sine Series Finite Sum - C PROGRAM

August 22, 2017

In "C Programs"
[wpedon id="7041" align="center"]
Posted in C Programs, Numerical Analysis Programming, Plots and Graphs, Series Sum	
3 thoughts on “Bessel Function Series – C PROGRAM”

    anjali	
    October 3, 2019

    what’s the command to plot using different colors??
    btw,thankyou very much.was very helpful 😀
    Reply
    K. Mariselvam	
    November 30, 2019

    sir, I want to know about Inokutti-Hirayama model (IH) fitting for non-exponential curve.
    Reply
        Manas Sharma	
        November 30, 2019

        Unfortunately, I’m not aware of it.
        Reply

Leave a Reply

Your email address will not be published. Required fields are marked *

Comment

Name *

Email *

Website

Notify me of follow-up comments by email.

Notify me of new posts by email.

Follow us on FB

    Follow us on FB

Latest Articles

    Performing SYMBOLIC/ANALYTICAL Integration or Differentiation using PYTHON [TUTORIAL]
    Aug 20, 2019
    Solving a System of Linear Equations using Python
    Aug 19, 2019
    Matrix Operations in Python using SciPy
    Aug 19, 2019
    Non-linear Curve Fitting using Python
    Aug 19, 2019
    Nanocluster Global Optimization using CALYPSO and Quantum ESPRESSO
    Mar 31, 2019
    Geometry Optimization Algorithms and implementations using Quantum ESPRESSO
    Nov 2, 2018

SUBSCRIBE ON YOUTUBE
Get the official BragitOff App
Get it on Google Play
Currently Reading
The Physics Book: From the Big Bang to Quantum Resurrection, 250 Milestones in the History of Physics
The Physics Book: From the Big Bang to Quantum Resurrection, 250 Milestones in the History of Physics
by Clifford A. Pickover
Strange Beauty: Murray Gell-Mann and the Revolution in Twentieth-Century Physics
Strange Beauty: Murray Gell-Mann and the Revolution in Twentieth-Century Physics
by George Johnson
The Loom Of God
The Loom Of God
by Clifford A. Pickover
Infinity And The Mind
Infinity And The Mind
by Rudy Rucker

goodreads.com
Ask a question on our forum

    About
    Policies
    Apps

Alexa Rank-Help us : Write a review about us
Social

    View ducktape07’s profile on FacebookView manassharma07’s profile on TwitterView ducktape07’s profile on InstagramView manassharma24059a12a’s profile on LinkedInView manassharma100’s profile on YouTubeView manassharma07’s profile on Google+View manassharma07’s profile on WordPress.org

SUBSCRIBE ON YOUTUBE
Get the official BragitOff App
Get it on Google Play
Powered by Nevler. © 2020 BragitOff.com. All Rights Reserved.
:)  */


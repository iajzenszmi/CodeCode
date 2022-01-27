// Java program to demonstrate working of Math.sin() Math.cos and Math.tan method.
// by Ian Martin Ajzenszmidt 27 Jan 2022
// Importing classes from java.lang package
import java.lang.Math;
public class sinea {
	// Main driver method
	public static void main(String[] args)
	{
		double sinresult;
		double cosresult;
		double tanresult;
                int i;
		char outline;
		System.out.println("from Ian Martin Ajzenszmidt");
		System.out.println("Number    Sine      Cosine   Tan");
		// Here argument is negative infinity
		  for(i=1;i<=10;i++){
		sinresult = Math.sin(i);
		cosresult = Math.cos(i);
		tanresult = Math.tan(i);
		System.out.printf("%d%s%10.5f%s%10.5f%s%10.5f\n",i," ",sinresult," ",cosresult," ",tanresult);

		}
	}
}

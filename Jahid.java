// "main method must always be in a class.
//

       import java.util.Scanner;
       public class Jahid
{
	public static void main(String args[])

	{
         int scanner;
	 System.out.print("Enter year;");
	 Scanner scan = new Scanner(System.in);
         int year = scan.nextInt();
	 if(year%4==0)
	 {
		 System.out.format("This year is leap year %d", year);
		 
	 }
	 else
	 {
                 System.out.format("%d not leap year  ", year);
	 }
	}
};
		 


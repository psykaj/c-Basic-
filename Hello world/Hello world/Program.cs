using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Threading.Tasks;

namespace Hello_world
{
    internal class Program
    {
        static void greet(string name)
        {
            Console.WriteLine("Good afternoon" + name);
        }

        static float average(int a, int b ,int c)
        {
            float sum = a + b + c;
            float ans = sum / 3;
            return ans;
        }

        static float average(int a, int b)
        {
            float sum = a + b;
            float ans = sum / 2;
            return ans;
        }

        static void Main(string[] args)
        {
            //int pankaj = 35;
            //string str = Console.ReadLine();
            //Console.WriteLine(str);
            //Console.WriteLine("Hello World");
            //Console.Write("Hello Pankaj");
            //Console.WriteLine("I love c# : " + pankaj);

            //int a = 5;
            //float b = 3.14F;
            //double c = 3.456;
            //bool isGrate = true;
            //char ch = 'P';
            //string str = "This is a string";

            //Console.WriteLine(a);
            //Console.WriteLine(b);
            //Console.WriteLine(c);
            //Console.WriteLine(isGrate);
            //Console.WriteLine(ch);
            //Console.WriteLine(str);

            //Type Casting
            //Types of Type casting :- Implicite and Explicite Type casting
            //Implicite :- Automatically run by the complier (char -> int -> long -> float -> double)
            //Explicite :- Manually type casting 
            //int x = (int)3.35;
            //int n = x;
            //double m = 344;
            //int z = 'M'; //It gives Ascii value 
            //float x1 = Convert.ToInt32(3.5);
            //Console.WriteLine("Convert it into Float to Int : " + x1);
            //Console.WriteLine(x);
            //Console.WriteLine(n);
            //Console.WriteLine(m);
            //Console.WriteLine(z);

            //Console.WriteLine("Enter the name : ");
            //string str = Console.ReadLine();
            //Console.WriteLine("Hey Hello " + str);

            //Console.WriteLine("How much Candies do yo8u want : ");
            //string can = Console.ReadLine();
            //Console.WriteLine("You will get 4 more candies : " + (Convert.ToInt32(can) + 4));

            //Operators in c#
            /* Arithmetic operator 
               Assignment operator
               Logical operator
               Comparison operator */

            //Arithmetic operator
            //int a = 5;
            //int b = 10;
            //Console.WriteLine("The value of a + b is : " + (a + b));
            //Console.WriteLine("The value of a - b is : " + (a - b));
            //Console.WriteLine("The value of a * b is : " + (a * b));
            //Console.WriteLine("The value of a / b is : " + (a / b));

            //Assignment operator
            //int x = 4;
            //int y = x;

            //Console.WriteLine(x);
            //Console.WriteLine(y);

            //y += 4;
            //Console.WriteLine(y);

            //x -= 4;
            //Console.WriteLine(x);

            //y *= 4;
            //Console.WriteLine(y);

            //y /= 4;
            //Console.WriteLine(y);

            //Logical operator 

            //Logical AND opertaor
            //Console.WriteLine(true && true);
            //Console.WriteLine(true && false);
            //Console.WriteLine(false && false);
            //Console.WriteLine();

            //Logical OR opertaor
            //Console.WriteLine(true || true);
            //Console.WriteLine(false || true);
            //Console.WriteLine(false || false);
            //Console.WriteLine();

            //Logical NOT opertaor
            //Console.WriteLine(!true);
            //Console.WriteLine(!false);


            //Comparsion Operator
            //Console.WriteLine(345 > 75);
            //Console.WriteLine(345 < 75);
            //Console.WriteLine(345 >= 75);
            //Console.WriteLine(345 <= 75);
            //Console.WriteLine(345 != 75);
            //Console.WriteLine(345 == 75);

            //Max function
            //int p = Math.Max(345, 76);
            //Console.WriteLine(p);

            //Min function
            //int q = Math.Min(345, 76);
            //Console.WriteLine(q);

            //cause math.sqrt return value in double 
            //double r = Math.Sqrt(144);
            //Console.WriteLine(r);

            //Absolute function :- it gives the positive values of any negative values
            //int s = Math.Abs(-54);
            //Console.WriteLine(s);

            //string str1 = "Hello world This is Pankaj";
            //Console.WriteLine(str1.Length);
            //Console.WriteLine(str1.ToUpper());
            //Console.WriteLine(str1.ToLower());

            //To Merge/Concat the two string  
            //Console.WriteLine(str1 + " and You are a nice guy!");
            //Alternative below
            //Console.WriteLine(string.Concat(str1 + " and You are a nice guy!"));

            //String Interpolation of string
            //string name = Console.ReadLine();
            //string candies = Console.ReadLine();
            //Console.WriteLine($"Your name is {name} and you will get {candies} candies.");

            //String character access via index numbers
            //string str2 = "Hello world This is Pankaj";

            //specific char access
            //Console.WriteLine(str2[0]);

            //IndexOf -> gives the starting index of the given value
            //Console.WriteLine(str2.IndexOf("Hello"));
            //Console.WriteLine(str2.IndexOf("world"));
            //Console.WriteLine(str2.IndexOf("This"));
            //Console.WriteLine(str2.IndexOf("is"));
            //Console.WriteLine(str2.IndexOf("Pankaj"));

            //substring -> starts from that index and print till end of string 
            //Console.WriteLine(str2.Substring(5));

            //if-else condition
            //Console.WriteLine("Enter your age : ");
            //string str3 = Console.ReadLine();
            //int age = Convert.ToInt32(str3);
            //if(age > 18)
            //{
            //    Console.WriteLine("You can drive");
            //}
            //else if(age < 12)
            //{
            //    Console.WriteLine("Please complete your high school");
            //}
            //else
            //{
            //    Console.WriteLine("You cannot drive");
            //}

            //Switch case 
            //int age = 20;

            //switch(age)
            //{
            //    case 18: 
            //        Console.WriteLine("first complete your age!");
            //        break;

            //    case 20:
            //        Console.WriteLine("You are 20 now");
            //        break;

            //    default:
            //        Console.WriteLine("Enjoy!");
            //        break;

            //}

            //Loops in c#
            //int i = 0;

            //While Loop
            //while(i < 5)
            //{
            //    Console.WriteLine(i);
            //    i++;
            //}

            //Do-while loop -> minimu 1 time execute if condition is false
            //do
            //{
            //    Console.WriteLine(i);
            //    i++;
            //} while(i > 5);

            //for loop
            //for(int i=1;i<=5;i++)
            //{
            //    Console.WriteLine(i);
            //}

            //Break and continue statement
            //Break -> leave that function or loop permanently
            //Continue -> leave that specific iteration and starts from next iteration

            //break
            //for (int i = 1; i <= 5; i++)
            //{
            //    Console.WriteLine(i);
            //    break;
            //}

            //continue
            //for (int i = 0; i <= 5; i++)
            //{
            //    if(i == 0)
            //    {
            //        continue;
            //    }
            //    Console.WriteLine(i);
            //}

            //Methods and method overloading 

            //greet(" Pankaj");
            //greet(" Rahul");

            //Console.WriteLine(average(2, 6, 8));
            //Console.WriteLine(average(3, 3, 3));

            //Console.WriteLine(average(3, 3));

            Player p = new Player();
            Console.WriteLine(p.name);
            Console.WriteLine(p.getHealth());
            p.setHealth(90);
            Console.WriteLine();
            Console.WriteLine(p.getHealth());


            Console.ReadLine();
        }
    }
}

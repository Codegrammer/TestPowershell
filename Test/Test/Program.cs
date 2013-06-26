using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Test
{
    class Program
    {
        static void Main(string[] args)
        {
            if (args!= null && args.Length == 1)
            {
                Console.WriteLine("This is a text from the program");
            }
            else
            {
                throw new Exception("This is the exception");
            }
        }
    }
}

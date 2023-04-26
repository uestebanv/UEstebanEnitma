using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PL
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //No es correcto
            //Console.BackgroundColor = ConsoleColor.Blue;
            
            // es correcto
            //Console.ColorBackground = Color("Green");
            
            //Es correco
            //Console.WriteLine("\nChar: {0} y {1}", Char.MinValue, Char.MaxValue);
            
            //No es correcto
            //Console.WriteLine(String.Format("Importe = {0:e}", 12.35));

            //Es correcto
            //Console.WriteLine(String.Format("{0:T}", DateTime.Now));



            Console.ReadKey();
        }
    }
}

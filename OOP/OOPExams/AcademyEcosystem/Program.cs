﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AcademyEcosystem
{
    class Program
    {
        static Engine GetEngineInstance()
        {
            return new AdvancedEngine();
        }

        static void Main(string[] args)
        {
            Console.SetIn(new StringReader(@"birth bush (0,0)
birth wolf WhiteTooth (1,1)
go WhiteTooth (0,0)
go WhiteTooth (1,1)
birth boar Daddy (0,0)
go Daddy (0,0)
go Daddy (1,1)
birth lion Simba (-1,-1)
go Simba (1,1)
sleep Simba 10
birth wolf Mizernik (0,0)
go Mizernik (1,1)
birth zombie Joro (10,10)
go Mizernik (10,10)
go Mizernik (10,10) 
end
"));
             
            Engine engine = GetEngineInstance();

            string command = Console.ReadLine();
            while (command != "end")
            {
                engine.ExecuteCommand(command);
                command = Console.ReadLine();
            }
        }
    }
}

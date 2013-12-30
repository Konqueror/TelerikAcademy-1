﻿//Write a program that converts a string to a sequence of C# Unicode character literals. Use format strings. Sample input:
//Hi!
//		Expected output:
//\u0048\u0069\u0021

using System;
using System.Text;

class StringToUnicode
{
    static void Main()
    {
        string input = Console.ReadLine();
        StringBuilder answer = new StringBuilder();

        for (int i = 0; i < input.Length; i++)
        {
            answer.AppendFormat("\\u{0:X4}", (int)input[i]);
        }

        Console.WriteLine(answer.ToString());
    }
}


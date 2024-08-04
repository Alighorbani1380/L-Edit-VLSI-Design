using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GoldSilverDynamicProgramingFinal
{
     class Program
     {
          static void Main(string[] args)
          {
               string InputedNumber = Console.ReadLine();
               string InputedGS = Console.ReadLine();
               string[] Numbers = InputedNumber.Split(' ');
               int ArrayCount = Convert.ToInt32(Numbers[0]);
               int MagicSticks = Convert.ToInt32(Numbers[1]);
               int[] GoldvSilver = new int[ArrayCount];
               List<int> NegList = new List<int>();
               for (int i = 0; i < ArrayCount; i++)
               {
                    if (InputedGS[i] == 'G')
                    {
                         GoldvSilver[i] = 1;
                    }
                    else
                    {
                         NegList.Add(i);
                         GoldvSilver[i] = -1;
                    }
               }
               int[,] Array = new int[int.Parse(Math.Pow(2, NegList.Count).ToString()), ArrayCount];
               double TedadHalat = Math.Pow(2, NegList.Count);
               for (int j = 0; j < GoldvSilver.Length; j++)
               {
                    if (NegList.Contains(j))
                    {
                         //int a = 0;
                         for (int i = 0; i < Math.Pow(2, NegList.Count);)
                         {

                              for (int k = 0; k < TedadHalat / 2; k++)
                              {
                                   Array[i, j] = -1;
                                   i++;
                              }
                              for (int k = 0; k < TedadHalat / 2; k++)
                              {
                                   Array[i, j] = 1;
                                   i++;
                              }
                         }
                         TedadHalat = TedadHalat / 2;
                    }
                    else
                    {
                         for (int i = 0; i < Math.Pow(2, NegList.Count); i++)//Editted
                         {
                              Array[i, j] = 1;
                         }
                    }

               }
               int max = 0;
               for (int i = 0; i < Math.Pow(2, NegList.Count); i++)
               {
                    List<int> MyList = new List<int>();
                    MyList.Add(0);
                    for (int j = 0; j < ArrayCount; j++)
                    {
                         if (Array[i, j] > 0 && MyList.Last() > 0)
                         {
                              MyList[MyList.Count - 1]++;
                         }
                         if (Array[i, j] > 0 && MyList.Last() <= 0)
                         {

                              MyList.Add(0);
                              MyList[MyList.Count - 1]++;
                         }
                         if (Array[i, j] < 0 && MyList.Last() < 0)
                         {
                              MyList[MyList.Count - 1]--;
                         }
                         if (Array[i, j] < 0 && MyList.Last() >= 0)
                         {
                              MyList.Add(0);
                              MyList[MyList.Count - 1]--;
                         }
                    }
                    int magicused = 0;
                    foreach (int item in NegList)
                    {
                         if (Array[i, item] == 1)
                         {
                              magicused++;
                         }

                    }
                    if (magicused <= MagicSticks)
                    {
                         if (MyList.Max() > max)
                         {
                              max = MyList.Max();
                         }
                    }
               }
               Console.WriteLine(max);
          }
     }
}

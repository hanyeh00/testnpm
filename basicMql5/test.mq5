//+------------------------------------------------------------------+
//|                                                         test.mq5 |
//|                                  Copyright 2022, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2022, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+

//datetime Datetime=__DATE__;
// introduction to mql 5;

void OnStart()
  {
//---
   datetime time=__DATE__;
   int myArray[3];
   myArray[0]=1;
   myArray[1]=2;
   myArray[2]=3;
   Print("the number in the location 0 is:",myArray[0]);
   const int cvar=1;

   Print(time);
  }
//+------------------------------------------------------------------+

#property copyright "Copyright 2023, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property writer   "Hanyeh00"
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
    double array[6];
   for (int i=0;i<6;i++)
   {
       array[i]=iOpen(_Symbol,PERIOD_D1,i);
   
   }
   ArrayPrint(array);
   ArrayReverse(array);
   ArrayPrint(array);
   
  }

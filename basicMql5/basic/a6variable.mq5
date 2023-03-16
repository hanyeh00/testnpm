//+------------------------------------------------------------------+
//|                                                     variable.mq5 |
//|                                  Copyright 2023, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2023, MetaQuotes Ltd."
#property link      "https://github.com/hanyeh00/testnpm/new/main/basicMql5/basic"
#property version   "Hanyeh00"
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
int a=15;
const int b=3;
void func(int a=5,int b=12)
{      static int c=6;
       c=c+1;
       Print(a,"  ",b,"  ",c,"  ");
       

}
void OnStart()
  {
//---
   func(a,b);
   func(a,12);
   func(a,12);
   
  }
//+------------------------------------------------------------------+

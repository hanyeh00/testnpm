//+------------------------------------------------------------------+
//|                                                  second test.mq5 |
//|                                  Copyright 2022, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2022, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------- -----------------------------+
int OnInit()
  {
//---
    Alert("همه توابع کامنت ککدم");
   //print("test");
   /*
   double variable=40.0;
   Print(variable);
   int array [3] [5];
   int size=ArraySize(array);
   int part1=ArrayRange(array,0);
   Print(part1);
   */
   // math function
  /* 
   double value=2.6;
   double value2=-10;
   double array2[2][2];
   Print(MathAbs(value2));
   Print(MathCeil(value));
   Print(MathFloor(value));
   */
   // conditional sentences if else:
 /*  
   bool check=1;
   if (!check )
   {
         Print("False");
   } else { Print("True");}
   
  */ 
   int p=PERIOD_H1;
   Print(p);
   
   // function:
  /* int newvariable=Addition_task(60,50);
   Print(newvariable);
   */
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
   
  }
//+------------------------------------------------------------------+

/*
int Addition_task(int var1, int var2)
    {
         int z=var1+var2;
          return(z);

     }
     */
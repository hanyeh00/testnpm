//+------------------------------------------------------------------+
//|                                                   session2-2.mq5 |
//|                                  Copyright 2022, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2022, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()

  {
//---
   double my_handle14;
   my_handle14=iMA(_Symbol,_Period,14,0,MODE_SMA,PRICE_CLOSE);
   double array14[];
   CopyBuffer(my_handle14,0,0,14,array14);
   ArraySetAsSeries(array14,1);
   double my_handle21;
   my_handle21=iMA(_Symbol,_Period,14,0,MODE_SMA,PRICE_CLOSE);
   double array21[];
   CopyBuffer(my_handle21,0,0,14,array21);
   ArraySetAsSeries(array21,1);
   
   if (array14[0]<array21[0] && array14[1]>array21[1])
   { Alert("close");}
   
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

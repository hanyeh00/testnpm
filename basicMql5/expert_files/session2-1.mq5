//+------------------------------------------------------------------+
//|                                                   session2-1.mq5 |
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
   //double x=SymbolInfoDouble(_Symbol,SYMBOL_ASK);
   MqlRates array_rates[];
   CopyRates(_Symbol,_Period,0,3,array_rates);
   ArraySetAsSeries(array_rates,1);
   Print(array_rates[0].time);
   
   
   // copy close............................//
   double array_close [];
   CopyClose(_Symbol,_Period,0,3,array_close);
   ArraySetAsSeries(array_close,1);
   Print(array_close[0]);
   //printf(array_close[0]); 
   
   
   
   
   
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

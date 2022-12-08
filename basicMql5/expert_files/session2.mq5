//+------------------------------------------------------------------+
//|                                                     session2.mq5 |
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
/*
   double info=SymbolInfoDouble(_Symbol,SYMBOL_LAST);
   double info1=SymbolInfoDouble(_Symbol,SYMBOL_ASKLOW);
   //Print(info1);
   MqlRates rates[];
   CopyRates(_Symbol,_Period,0,4,rates);
   ArraySetAsSeries(rates,1);
   Print(rates[0].close);
   */
   double close=iClose(_Symbol,PERIOD_CURRENT,1);
   Print(close);
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

//+------------------------------------------------------------------+
//|                                                          RSI.mq5 |
//|                                  Copyright 2022, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2022, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"
int rsi_handler;


//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+

input int rsi_time=14;
int OnInit()
  {
//---
   rsi_handler=iRSI(_Symbol,PERIOD_CURRENT,rsi_time,PRICE_CLOSE);
   
   double array_rsi[];
   CopyBuffer(rsi_handler,0,0,10,array_rsi);
   //ArraySetAsSeries(array_rsi,1); //timeseries
   Print(array_rsi[0],1);
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

//+------------------------------------------------------------------+
//|                                                       stoch2.mq5 |
//|                                  Copyright 2023, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2023, MetaQuotes Ltd."
#property link      "https://github.com/hanyeh00/testnpm/new/main/basicMql5/basic"
#property version   "hanyeh00"
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
double stoch1[];
double stoch2[];
int handler;
int OnInit()
  {
//---
     ArraySetAsSeries(stoch1,true);
     ArraySetAsSeries(stoch2,true);
    handler=iStochastic(_Symbol,_Period,21,7,3,MODE_SMA,STO_CLOSECLOSE);
   
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
CopyBuffer(handler,0,0,12,stoch1);
CopyBuffer(handler,0,1,12,stoch2);
if (stoch1[2]<stoch2[2]&&stoch1[0]>stoch2[0]&&stoch1[0]<40) Print("cross Happend:",stoch1[0]);
   
  }
//+------------------------------------------------------------------+
//| Trade function                                                   |
//+------------------------------------------------------------------+
void OnTrade()
  {
//---
   
  }
//+------------------------------------------------------------------+

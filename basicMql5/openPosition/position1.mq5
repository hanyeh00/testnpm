//+------------------------------------------------------------------+
//|                                                 buyposition1.mq5 |
//|                                  Copyright 2023, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2023, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
#include <Trade/Trade.mqh>
#include <Trade/PositionInfo.mqh>
CTrade Trade_m;
CPositionInfo Position_m;
double Bid=NormalizeDouble(SymbolInfoDouble(_Symbol,SYMBOL_BID),_Digits);
int OnInit()
  {
//---
      
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
     if (PositionSelect(_Symbol)==true){if(Position_m.Profit()>100)
                                                Trade_m.PositionClose(_Symbol) ;
                                        if(Position_m.Profit()<50)
                                                 Trade_m.PositionClose(_Symbol) ;}
     else{Trade_m.Buy(0.05);}
                                       
   
  }
//+------------------------------------------------------------------+

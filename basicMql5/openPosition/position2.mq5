//+------------------------------------------------------------------+
//|                                                        sell1.mq5 |
//|                                  Copyright 2023, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2023, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"
#include <Trade\Trade.mqh>
CTrade trade_m;
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+

//---
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
if (isNewBar()==true){
     if (PositionSelect(_Symbol)==true){if(Position_m.Profit()>100)
                                                Trade_m.PositionClose(_Symbol) ;
                                        if(Position_m.Profit()<50)
                                                 Trade_m.PositionClose(_Symbol) ;}
     else{Trade_m.Buy(0.05);}
                                       
   
  }}
  /*
  bool isNewBar()
     {static datetime olddate;
       datetime newtime[];
       bool isNew=false;
       CopyTime(_Symbol,_Period,0,1,newtime);
       if( newtime[0]!=olddate)
          {isNew=true;
            olddate=newtime[0];}
       return isNew;
        
     
     } */
//+------------------------------------------------------------------+
  /*  bool isNewBar() { 
   static long lastBarCount = -1;
   long currentBarCount =  Bars(Symbol(), 0);
   if(lastBarCount != currentBarCount) {
      lastBarCount = currentBarCount;
      return true;
   } else {
      return false;
   }
}*/
long currentBarCount =  Bars(Symbol(), 0);
//+------------------------------------------------------------------+

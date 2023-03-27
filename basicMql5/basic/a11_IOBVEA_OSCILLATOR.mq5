//+------------------------------------------------------------------+
//|                                                     youtube1.mq5 |
//|                                  Copyright 2023, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2023, MetaQuotes Ltd."
#property link      "https://github.com/hanyeh00/testnpm/new/main/basicMql5/basic"
#property version   "hanyeh00"

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+

#include <Trade\Trade.mqh>
CTrade trade_m;
  //  double ASK=NormalizeDouble(SymbolInfoDouble(_Symbol,SYMBOL_ASK),_Digits);
    //double Bid=NormalizeDouble(SymbolInfoDouble(_Symbol,SYMBOL_BID),_Digits);
    //double bishtar=SymbolInfoDouble(_Symbol,SYMBOL_ASK);
    
    
    int Handler;
    double arrayIOB[];
int OnInit()
  {
//---

  
   return(INIT_SUCCEEDED);
  }
  
void OnTick()
  {
//---
       
       ArraySetAsSeries(arrayIOB,true);
      int iobvhandle= iOBV(_Symbol,_Period,VOLUME_REAL);

     string signal="";
     CopyBuffer(iobvhandle,0,0,100,arrayIOB);
     double IOBvalue=arrayIOB[0];
     //Calculate IOB candle
     int maxiobCandle=ArrayMaximum(arrayIOB,0,WHOLE_ARRAY);
     int miniobCandle=ArrayMinimum(arrayIOB,0,WHOLE_ARRAY);
     //calculae max IOB
     int iobMaxValue=arrayIOB[maxiobCandle];
     int iobMinValue=arrayIOB[maxiobCandle];
     
    if(IOBvalue>iobMaxValue) {signal="Buy";
                               trade_m.Buy(0.01,_Symbol);}
                               
    if(IOBvalue<iobMinValue) {signal="sell";
                               trade_m.Sell(0.01,_Symbol);}
     Print(IOBvalue,"  ",maxiobCandle," ",iobMaxValue);
     
    
  }
  




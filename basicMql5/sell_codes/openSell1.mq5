#property copyright "Copyright 2023, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"
#include <Trade\Trade.mqh>
CTrade trade_m;
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+

//---
     double Bide=NormalizeDouble(SymbolInfoDouble(_Symbol,SYMBOL_BID),_Digits);
     double Balancee=AccountInfoDouble(ACCOUNT_BALANCE);
     double equit=AccountInfoDouble(ACCOUNT_EQUITY);
     
   

  void OnTick()
  {
  
if(PositionsTotal()>=0)
          {
           trade_m.Sell(0.02,_Symbol,Bide-100*_Point,0,Bide-300*_Point);

     
                 }
                 }

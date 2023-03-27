//+------------------------------------------------------------------+
//|                                                   position71.mq5 |
//|                                  Copyright 2023, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2023, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
//#include <Trade\AccountInfo.mqh>
//CAccountInfo testAcc;


//+------------------------------------------------------------------+
//|  Include                                                         |
//+------------------------------------------------------------------+
#include <Trade\Trade.mqh>
#include <Trade\PositionInfo.mqh>
#include <Trade\DealInfo.mqh>
CTrade trade_m;
CPositionInfo position_m;
CDealInfo    sym_info;

//ENUM_ACCOUNT_TRADE_MODE  TradeMode() const
int OnInit()
  {
//---
   //string company=AccountInfoString(ACCOUNT_COMPANY);
   //Print(AccountInfoString.A);
  // Print(testAcc.Company());
   //Print(testAcc.Login()); 
   bool x= position_m.Select(_Symbol);
   Print(x);
  
   
   
   //Print(position_m.Select(_Symbol));

   
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
  if(position_m.Select(_Symbol))
  {
       Print("have position");
       double X=position_m.Volume();
       double Y=position_m.Profit();
      // Print(X," ", Y);
        if( Y>0.04)
                    trade_m.Sell(0.01);
  }
  else{
  
       trade_m.Buy(5,_Symbol);
       
      
       
    }
  }
//+------------------------------------------------------------------+
//| Trade function                                                   |
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+

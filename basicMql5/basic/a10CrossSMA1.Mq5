//+------------------------------------------------------------------+
//|                                                    CrossSMA1.mq5 |
//|                                  Copyright 2023, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2023, MetaQuotes Ltd."
#property link      "https://github.com/hanyeh00/testnpm/new/main/basicMql5/basic"
#property version   "hanyeh00"
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
double SMA21[];
double SMA7[];
int Handle_21;
int Handle_7;
int OnInit()
  {
//---
     ArraySetAsSeries(SMA21,true);
     ArraySetAsSeries(SMA7,true);
     Handle_21=iMA(_Symbol,_Period,21,0,MODE_SMA,PRICE_CLOSE);
     Handle_7=iMA(_Symbol,_Period,7,0,MODE_SMA,PRICE_CLOSE);
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
   
   CopyBuffer(Handle_21,0,0,7,SMA21);
   CopyBuffer(Handle_7,0,0,7,SMA7);
   //Print("SMA21: ",SMA21[0],"SMA7: ",SMA7[0]);
   if(SMA21[2]>SMA7[2] && SMA21[0]<SMA7[0]) Alert("hannieh:");
  }
//+------------------------------------------------------------------+
//| Trade function                                                   |
//+------------------------------------------------------------------+
void OnTrade()
  {
//---
   
  }
//+------------------------------------------------------------------+

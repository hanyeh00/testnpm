//+------------------------------------------------------------------+
//|                                           buyandSellStrategy.mq5 |
//|                                  Copyright 2023, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2023, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
#include <Trade\Trade.mqh>
#include  <Trade\PositionInfo.mqh>
CTrade trade_m;
CPositionInfo position_m;
double stoch1[]; //indicator
double stochSignal[];
int HandleStoch;
double smA200[];
int HandleIMA;
int OnInit()
  {
//---
     ArraySetAsSeries(stoch1,true);
     ArraySetAsSeries(stochSignal,true);
    
    HandleStoch=iStochastic(_Symbol,_Period,21,7,3,MODE_SMA,STO_CLOSECLOSE);
    
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
      if (isNewBar()==false) return;
      CopyBuffer(HandleStoch,0,0,3,stoch1);
      CopyBuffer(HandleStoch,1,0,3,stochSignal);
      double price=iClose(_Symbol,_Period,0);
      if(position_m.Select(_Symbol)){
      double prof_pos=position_m.Profit();
      if(prof_pos>5) //save profit
      {trade_m.PositionClose(_Symbol);}
      //if(prof_pos<=-50) //save profit
      //{trade_m.PositionClose(_Symbol);}
      Print(prof_pos);

   }
      else{  
      double vol=0.01;    
      bool con1=stoch1[0]>stochSignal[0] && stoch1[2]<stochSignal[2];
      bool con2=stoch1[0]<40;
     // if(con1 && con2){
      trade_m.Buy(vol);}
      //}
  }
//+------------------------------------------------------------------+
bool isNewBar()
     {static datetime olddate;
       datetime newtime[];
       bool isNew=false; //initialization
       CopyTime(_Symbol,_Period,0,1,newtime);
       if( newtime[0]!=olddate)
          {isNew=true;
            olddate=newtime[0];}
       return isNew;}

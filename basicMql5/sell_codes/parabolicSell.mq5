//+------------------------------------------------------------------+
//|                                                   martingel1.mq5 |
//|                                  Copyright 2023, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2023, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
//| variable                                                                 |
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

double PARABOLIC[];
int paraHandle;
double initial_vol=0.01;
input int  martingle_max=3;
input int martingle_loss=5;
input int martingle_num=3;
double close_profit=5;


//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
     ArraySetAsSeries(PARABOLIC,true);
    HandleIMA=iSAR(_Symbol,_Period,0.03,0.2);
//---
   return(INIT_SUCCEEDED);
  }

//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
     //copy buffer:
     CopyBuffer(paraHandle,0,0,3,PARABOLIC);
     double priceHighLow[1];
     // each candle
     if (isNewBar()==false){ return;}
      
     // if else there is a position in the tick:
     
     if(PositionSelect(_Symbol)){
     trade_m.Buy(initial_vol);
     
        priceHighLow[1]=iHigh(_Symbol,_Period,0);
        priceHighLow[0]=iLow(_Symbol,_Period,2);
       // if(position_m.PositionType()==POSITION_TYPE_SELL){
        bool con1=priceHighLow[0]>PARABOLIC[2] && priceHighLow[1]<PARABOLIC[0];
        if(con1){
                  trade_m.Sell(initial_vol);
                  }
        
           
   

  }
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
       
       
 void CloseAllPosition()
        
         { int total=PositionsTotal()-1;//like array index start from  0
               
               while (total>=0)
                     { string symbo=PositionGetSymbol(total);
                          if(trade_m.PositionClose(symbo))
                                 total--;
} 
         
         }               

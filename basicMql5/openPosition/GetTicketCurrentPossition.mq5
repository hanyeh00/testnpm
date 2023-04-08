//+------------------------------------------------------------------+
//|                                      FindCureentPositonPrice.mq5 |
//|                                  Copyright 2023, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2023, MetaQuotes Ltd."
#property link      "https://github.com/hanyeh00/"
#property version   "youtubeCourse"
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
#include  <Trade\Trade.mqh>
CTrade trade_m;

//+------------------------------------------------------------------+
//|       input                                                           |
//+------------------------------------------------------------------+
input int closeTime=17;
input int closeMin=0;
input int closesec=0;
input double inpmagicnumber;
int OnInit(){


   return(INIT_SUCCEEDED);
  }

//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick(){
         MqlDateTime structime;
         datetime timeCurrent=TimeCurrent(structime);
         Print("server time:",timeCurrent);
             for(int i=0;i<PositionsTotal();i++)
         { 
            ulong positonTicket=PositionGetTicket(i);
            Print(positonTicket);//ticket current positions
         }
         /*
         for(int i=PositionsTotal()-1;i>0;i--)
         { 
            ulong positonTicket=PositionGetTicket(i);
            Print(positonTicket);
         }
*/
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//|  counter func                                                                |
//+------------------------------------------------------------------+



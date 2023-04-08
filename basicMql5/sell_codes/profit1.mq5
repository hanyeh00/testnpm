#property copyright "Copyright 2023, MetaQuotes Ltd."
#property link      "https://www.youtube.com/watch?v=0Z6EXoPbx38"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
#include  <Trade\Trade.mqh>
CTrade trade_m;

//+------------------------------------------------------------------+
//|       input                                                           |
//+------------------------------------------------------------------+

//input double targetProfit=5;
int OnInit(){/*
                
         }*/

   return(INIT_SUCCEEDED);
  }

//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick(){
   
    double profit=AccountInfoDouble(ACCOUNT_EQUITY)-AccountInfoDouble(ACCOUNT_BALANCE);
    if (profit<-5){CloseAllPosition();}
    Print("\n Profit is :",DoubleToString(profit,2));
    Print("number of position is:",PositionsTotal());           

}

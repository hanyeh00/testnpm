#property copyright "Copyright 2023, MetaQuotes Ltd."
#property link      "https://github.com/hanyeh00/testnpm/new/main/basicMql5/basic"
#property version   "hanyeh00"
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
   MqlTick price[];
   ArraySetAsSeries(price,true);
   int y=CopyTicks(_Symbol,price,COPY_RATES_CLOSE,0,5);
   if (y>0)
   {ArrayPrint(price); }
  }

 void CloseAllPosition()
         { int total=PositionsTotal()-1;//like array index start from  0
               while (total>=0)
                     { string symbo=PositionGetSymbol(total);
                          if(trade_m.PositionClose(symbo))
                                 total--;
} 
         
         }

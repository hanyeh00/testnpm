void OnStart()
  {
//---
     MqlRates price[]; //mql structure link=https://www.mql5.com/en/docs/constants/structures/mqlrates
     ArraySetAsSeries(price,true);
     int check;
     check=CopyRates(_Symbol,PERIOD_D1,0,2,price);
     ArrayPrint(price);
     
  }

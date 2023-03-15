void OnStart()
  {
//---
    double array[6];
    double array2[];
    ArraySetAsSeries(array2,true);
    ArrayResize(array2,6);
   for (int i=0;i<6;i++)
   {
       array[i]=iOpen(_Symbol,PERIOD_D1,i);
       array2[i]=iOpen(_Symbol,PERIOD_D1,i);
   
   }
    ArrayPrint(array);
    ArrayPrint(array2);
    
    
    }

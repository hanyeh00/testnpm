void OnStart()
  {
//---
    double array[6];
    double array2[];
    ArraySetAsSeries(array2,true);
   for (int i=0;i<6;i++)
   {
       array[i]=iOpen(_Symbol,PERIOD_D1,i);
      
   }
   ArrayCopy(array2,array);
    ArrayPrint(array);
    ArrayPrint(array2);

#property copyright "Copyright 2023, MetaQuotes Ltd."
#property link      "https://github.com/hanyeh00/testnpm/new/main/basicMql5/basic"
#property version   "hanyeh00"
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+


void func2( int & arr1[],int b) 
{

               
               for(int i=0;i<ArraySize(arr1);i++)
               {
               
               arr1[i]=arr1[i]+b;
               }
               ArrayPrint(arr1);
               }

void OnStart()
  {
//---
   static int array[5]={1,2,3,4,9};
   func2(array,1);
   func2(array,1);
  }

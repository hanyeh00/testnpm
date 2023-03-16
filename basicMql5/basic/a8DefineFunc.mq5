
double func3( double a,int b) 
{

               double c=0;
               for(int i=0;i<5;i++)
               {
                
               c=a+b;
               }
               return (c);
               }

void OnStart()
  {
//---

   double price=iClose(_Symbol,PERIOD_D1,1);
   double c=func3(price,1);
   Print("predict price:",c);
  }

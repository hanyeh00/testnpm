let counter=1;
let sum=0;
while(counter<100)

{
    ++counter;
    if (counter%2==0)
    {
        sum+=counter;
    }

   console.log(counter);
}
 document.writeln( "<p style= font-size:5ex </p>",sum);
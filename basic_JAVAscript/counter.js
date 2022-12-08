let counter=1;
while(counter<10)
{
    console.log("value:",counter);
    ++counter;
    console.log("value:",counter);
    document.writeln( "<p style= \"font-size: "+
          counter + "ex\">"+ counter + "ex</p>");
}
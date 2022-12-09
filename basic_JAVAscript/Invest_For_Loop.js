const money_invest=1000; //original invested
const rate=0.05;         //annual interest rate

let a; // is amount deposit at the end 10th years

document.writeln("<table border='2'>");
document.writeln(
"<th>Year</th>" ); // year column heading
document.writeln(
 "<th>Amount on deposit</th>" ); // amount column heading

for (var i=1; i<11;i++)
{
    a=money_invest* Math.pow(1+rate,i);
    document.writeln( "<tr><td>" + i +
   "</td>" +
        "<td>" + a.toFixed(2) +
   "</td></tr>" );
}

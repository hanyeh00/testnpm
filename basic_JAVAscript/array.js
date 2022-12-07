var array =[50,60,70];
array[0]=10;
//array=[50,60,70];
console.log(array[0]);

/////////////////////

var array2=[[1,4],[5,7],[6,9]];
array2.push([2 ,4]);
console.log(array2[0][1]);
array2.pop();
y=array2.pop();
console.log(y);

////////// shift unshift add in begining

var my_array=["cat","dog","fox"];
my_array.shift();
my_array.unshift("birds");
console.log(my_array);

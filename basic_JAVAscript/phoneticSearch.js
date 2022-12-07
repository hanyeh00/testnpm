function phoneticlookup(val)
{
   var result="";
   var lookup=
    {
        "alpha":"adam",
        "bravo":"Boston",
        "charlie":"chicago",
        "echo":"easy"

    };
   result=lookup[val];
   /*
   switch(val)
   {
       case "alpha":
           result="adam";
       case "bravo":
           result="Boston";
       case "charlie":
           result="chicago";
       case "echo":
           result="easy";
       default result="hi";
   }
   */
   return result
}

console.log(phoneticlookup('charlie'));
/*
array=[];
obect={};
inside array there is object:
array[{"":12,"":""}]
 */
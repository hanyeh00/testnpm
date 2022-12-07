// object trainee:

var testobj={ 1:"cat", 2:"dog", 3: "birds"};

var animal_category=testobj[3];
console.log(animal_category);

////
var ourDog={"name":"camper","gender":"male","legs":4,"tail":1};

ourDog.name='katty';
console.log(ourDog.name);
delete ourDog["name"];
ourDog["name"]="happy Camper";
console.log(ourDog);
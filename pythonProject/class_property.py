name='@dataclass'
class Spam:
    def __init__(self,name):
        self._name=name

    #name="classScope"
    #list1=[name]*3
    #list2=[name for i in range(3)]
    #list3=lambda a : a + "r"
    #list3(name)

    @classmethod
    def Hello(cls):
        return f'{cls.name} says hello'

    @property
    def name(self):
        return self._name

    @name.setter
    def name(self,name):
        self._name=name
P=Spam("kolo")
print(P.__dict__)
P.__dict__['name']="joe"
print(P.__dict__)
print(P.name)


#new class 

class MyClass:
    def __init__(self,name):
        self.name=name
        self._city="Tehran"
        self.__privateData=18

    @property
    def cityName(self):
        return(self._city)# I cannot override the property
    @cityName.setter # with setter we can change property
    def cityName(self,newcity:str):
       
           # raise ValueError("city should be string format")
        self._city = newcity
X=MyClass("kevin")
#X._city="Yazd"
#X.MyClass__privateData=12
#print(X.MyClass__privateData)
print(X.cityName)
X.cityName=2
print(X.cityName)






class Human():
    count=0
    def __init__(self,name,age):
        self.name=name
        self.age=age
        #print(name,self.age)
    def __repr__(self):
        return f'Human(name={self.name!r},age={self.age!r})'

P=Human('mohsen',33);
print(P)

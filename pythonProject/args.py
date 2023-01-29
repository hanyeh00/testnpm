def show_name(name):
    print(f"hello {name}")

def show_name2(name,*args): #argoman pishbini nashode
    print(f"hello {name}")
def show_name3(name,*args,**kwargs):
    #argoman pishbini nashode
    print(f"hello {name}") #argoman va key value pishbini nashode
show_name("ali")
show_name2("ali","amir")
show_name3("ali","amir",age=23)





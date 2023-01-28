import datetime
def get_date():
    return datetime.datetime.now()
#print(str(get_date()))
with open("time.txt","a") as file:
    name="joe"
    file.write(f"\n the time is {str(get_date())}")

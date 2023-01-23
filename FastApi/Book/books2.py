#path parametes
#add addininal parameters to api call
from fastapi import  FastAPI
app=FastAPI()

@app.get("/")
def Display():
    return({"hi":"welcome"})
@app.get("/BOOK/{Book_Title}")
def Get_Title(Book_Title:int): # hint we dont have int title
    return ({"Title":Book_Title})

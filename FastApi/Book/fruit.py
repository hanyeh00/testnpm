from fastapi import FastAPI
from enum import Enum
app=FastAPI()

class Fruit(str,Enum):
     Apple="tasty_apple"
     Orange="tasty_orange"
     Carrot="ugly_carrot"

@app.get("/Fruits/{fruitname}")
def Fruitname(fruitname:Fruit):
    if fruitname==Fruit.Apple:
        return("wow")
    if fruitname==Fruit.Orange:
        return("wowww")
    if fruitname==Fruit.Carrot:
        return("pof")
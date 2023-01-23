from fastapi import FastAPI
from enum import Enum
app=FastAPI()

class Direction(str,Enum):
    North="north"
    South="south"
    East="east"
    West="west"

@app.get("/Direction/{direction_name}")
async def Direction_display(direction_name:Direction):
    if direction_name==Direction.North:
        return({"Direction":direction_name, "sub":"UP"})
    if direction_name==Direction.West:
        return({"Direction":direction_name, "sub":'west'})
    if direction_name==Direction.South:
        return({"Direction":direction_name, "sub":"down"})
    if direction_name==Direction.East:
        return({"Direction":direction_name, "sub":"east"})

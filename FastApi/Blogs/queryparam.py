from typing import Optional
from enum import Enum
from fastapi import FastAPI

app=FastAPI()
class Direction(str,Enum):
    left="left"
    right="right"
#defualt
@app.get("/pages")
def page_number(path=Direction.left ,id=2,name="ALice"):
    return {'messages':f'{name} of the page with {id} {path}'}


#optional

@app.get("/paramQuery")
def page_check(id:int, size:Optional [int]= 5):
    return {'messages':f'size {size} of the page with {id}'}

#query and path param

@app.get("/blog/{id}/{comments}")
def review( comments:bool,username:str,id:int,size:Optional [int]= 5):
    return {'messages':f'size {size} of the page with {id} has {comments} with {username}'}

# url:http://127.0.0.1:8000/blog/2/false?username=2s&size=5























from fastapi import FastAPI
from router import blog_Post
app=FastAPI()
app.include_router(blog_Post.router)
app.include_router(blog_Post.routers)
@app.get("/items/{item_id}")
def get_detail(item_id):
    return{"messeges":item_id}












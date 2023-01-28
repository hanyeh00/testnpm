from fastapi import FastAPI, Depends
from router import blog_Post
from router.blog_Post import required_functionality
from database import models
from database.db import engine

app = FastAPI()
app.include_router(blog_Post.router)
app.include_router(blog_Post.routers)


@app.get("/items/")
def index(comment: dict = Depends(required_functionality)):
    return {'message': 'Hello world!',
            'comment': comment
            }


models.Base.metadata.create_all(engine)

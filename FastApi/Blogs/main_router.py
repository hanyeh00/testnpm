from fastapi import FastAPI
from router import blog_get

app = FastAPI()
app.include_router(blog_get.router)


@app.get('/post', summary="Nothing important",
         description="The range() function returns a sequence"
                     " of numbers, starting from 0 by default, ")
async def FOGH(path='Tehran'):
    return {'your path is': path}

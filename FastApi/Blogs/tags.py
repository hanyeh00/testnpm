from fastapi import FastAPI,status,Response,HTTPException
app=FastAPI()

@app.get('/post',summary="Nothing important",
         description="The range() function returns a sequence"
                    " of numbers, starting from 0 by default, ")
async def Post(path='Tehran'):
    return {'your path is':path}
@app.get('/blog', tags=['blog_operation','error']
         ,response_description="MY nationality is in here")
def blog_summary(title,response:Response):
    """
    Hello every one
     - this is **Hanieh**
     - I am from **Iran**
     - I am happy to share my khnowladge in **FastAPI** with you
    """

    if title=="Tehran":
        return {'message':"you don't have access to this vity"}
    else:
        return {'message':'welcome Honey'}

@app.get('/blog/name', tags=['blog_operation'])
def name_blog(id:int):
    return {'message':f'id number is:{id}'}


@app.get("/error/{page_id}",tags=['error'])
async def Blog_page(page_id: str):
    if page_id in range(6):

        raise HTTPException(status_code=404, detail="page not found"
                            ,headers="Nothing to be seen at range 6")
    return {'messages': f'of the page with {page_id}'}



from fastapi import FastAPI,status, Response,HTTPException

app=FastAPI()

@app.get("/pages", status_code=status.HTTP_200_OK)
def page_number(id:int,re:Response):
    if id==4:
        #raise HTTPException(status_code=404, detail="page not found")
        re.status_code=status.HTTP_403_FORBIDDEN
        return {'messages': f'{id} مال تو نیست'}
    else:
        return {'messages':f'of the page with {id}'}


@app.get("/error/{page_id}")
async def Blog_page(page_id: str):
    if page_id in range(6):

        raise HTTPException(status_code=404, detail="page not found"
                            ,headers="Nothing to be seen at range 6")
    return {'messages': f'of the page with {page_id}'}







from fastapi import FastAPI, APIRouter, HTTPException, Response

router = APIRouter(prefix="/blog", tags=["blog"])


@router.get('/', tags=[ 'error'],
            response_description="MY nationality is in here")
def blog_summary(title, response: Response):
    """
    Hello every one
     - this is **Hanieh**
     - I am from **Iran**
     - I am happy to share my khnowladge in **FastAPI** with you
    """

    if title == "Tehran":
        return {'message': "you don't have access to this vity"}
    else:
        return {'message': 'welcome Honey'}


@router.get('/name', tags=['blog'])
def name_blog(id: int):
    return {'message': f'id number is:{id}'}


@router.get("/error/{page_id}", tags=['error'])
async def Blog_page(page_id: str):
    if page_id in range(6):
        raise HTTPException(status_code=404, detail="page not found")
    return {'messages': f'of the page with {page_id}'}


@router.get("/blog_book")
def define_book(title, authur):
    return {"title": title, 'authour': authur}

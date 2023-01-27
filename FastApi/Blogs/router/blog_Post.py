from typing import Optional, List

from fastapi import APIRouter, Query, Path,Body
from pydantic import BaseModel

router = APIRouter(
    prefix='/blog',
    tags=['blog']
)

routers = APIRouter(
    prefix='/request',
    tags=['request']
)


class Our_model(BaseModel):
    title: str
    number_of_page: int
    Authur: str
    date: str

# validators_nonoptional:str=Body(...),
#validators_optional:str=Body("this is us"),
@router.post("/request/{item_id}")
def Send_request(code: Our_model,
                  item_id: str ):
    return {'hello': code,'id':item_id}


@routers.post("/request2")
async def request_Post(   multipleV:Optional[List[int]],

                       version: str=Query('book',min_length=4),
                       metadata: int = Query(4,
                                             title="tile doesn't show",
                                             description="some description about meta data", deprecated=False),
                       ):
    return {
#=Query([1,2,3]
            'version': version,
            'metadat': metadata,
           'variabls':multipleV
           }

from fastapi import FastAPI
app=FastAPI()
@app.get("/blog")
async def Message():
    return ({"welcome":"HI"})


@app.get("/blog/all")
def get_all_blogs():
    return {"welcome":"all blog  is provided"}
@app.get("/blog/odd")
def get_all_blogs():
    return {"welcome":"odd blog  is provided"}
@app.get("/blog/even")
def get_all_blogs():
    return {"welcome":"even blog  is provided"}
@app.get("/blog/{id}")
def get_all_blogs_id(id:int):
    return {"welcome":id}
@app.get("/blog/even/man")
def Sub_directory():
    return {"welcome":"man"}

@app.get("/blog/all/woman")
def Sub_directory():
    return {"welcome":"woman"}

















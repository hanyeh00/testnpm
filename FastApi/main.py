from fastapi import FastAPI

app = FastAPI()  # create object variable
movies = dict(title="Mr Robot", year=2016)


@app.get("/")
async def root():
    return {"message": "hi"}


@app.get("/movies")
def seriesName():
    return movies

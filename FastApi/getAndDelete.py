from fastapi import FastAPI

app = FastAPI()  # create object variable
movies: object
movies = [dict(title="", year=0), dict(title="Mr Robot", year=2016),
          dict(title="the last of us",year=2023),
          dict(title="Breathe: Into the Shadows", year=2020),
          dict(title="Sagrada familia", year=2022),
          dict(title="The Rig", year=2022),
          dict(title="Vinland Saga ", year=2019)
          ]
movie_id=[]

@app.get(f"/movies/{movie_id}")
def seriesName(movie_id: int):
    return movies[movie_id]
#delete movies:
@app.delete("/movies/{movie_id}")
def Delete(movie_id: int):
    x=movies.pop(movie_id)
    return x





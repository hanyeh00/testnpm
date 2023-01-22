from fastapi import FastAPI

app = FastAPI()  # create object variable
movies: object
movies = [dict(title="", year=0), dict(title="Mr Robot", year=2016),
          dict(title="the last of us", year=2023),
          dict(title="Breathe: Into the Shadows", year=2020),
          dict(title="Sagrada familia", year=2022),
          dict(title="The Rig", year=2022),
          dict(title="Vinland Saga ", year=2019)
          ]
movie_id = []


@app.get(f"/movies")
def seriesName():
    return movies


# creating sth post request
@app.post("/Update_movie/")
def Update_movie(movies_id:int,movie:dict):
    """

    :type movie: object
    """
    movies_to_be_update=movies[movies_id]
    movies_to_be_update['title' ] = movie['title']
    movies_to_be_update['year'] = movie['year']


    return movies_to_be_update

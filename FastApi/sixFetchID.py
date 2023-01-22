from fastapi import FastAPI
import mysql.connector

app: FastAPI = FastAPI()

mydb = mysql.connector.connect(host="localhost", user="root", password="***", database="fastapitest")
mycursor = mydb.cursor()  # create cursor


@app.get("/movies_id/")
def FetchID(movies_id: int):
    sql = 'SELECT title FROM movies where id=%s'
    val = (movies_id,)
    movie_id = mycursor.execute(sql, val)
    mycursor.execute(movie_id)
    movies = mycursor.fetchall()
    return movies

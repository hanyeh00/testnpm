from fastapi import FastAPI

import mysql.connector

app = FastAPI()

mydb=mysql.connector.connect(host="localhost", user="root",password="***",database="fastapitest")
mycursor = mydb.cursor() #create cursor


@app.get("/")
def read_root():
  return {"Hello": "World"}
@app.get(f"/movies")
def seriesName():
    sql='SELECT * FROM movies'
    mycursor.execute(sql)
    movies= mycursor.fetchall()
    return movies


# creating sth post request
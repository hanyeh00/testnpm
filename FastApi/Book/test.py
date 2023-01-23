from fastapi import FastAPI

app = FastAPI()

@app.get("/book")
def JustNull():
    print(1)
    return ({"hi":"welcome"})
from fastapi import FastAPI

app = FastAPI()

BOOKS = {
    'book_1': {'title': 'Atomic Habits', 'author': 'James Clear'},
    'book_2': {'title': 'Ulysses', 'author': 'James Joyce'},
    'book_3': {'title': 'To Kill a Mockingbird', 'author': ' Harper Lee'},
    'book_4': {'title': 'Beloved', 'author': 'Toni Morrison'},
    'book_5': {'title': 'Jane Eyre', 'author': 'Charlotte Brontë'},
}
@app.get("/read")
def read_param(name):

    return BOOKS[name]
#path parameter
@app.get("/read/{name}")
def read_param(name):

    return BOOKS[name]
@app.delete("/read")
def del_param(name):
    #BOOKS.pop(name)
    del(BOOKS[name])
    return BOOKS

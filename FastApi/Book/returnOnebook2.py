from fastapi import FastAPI
from enum import Enum

app=FastAPI()
BOOKS = {
    'book_1': {'title': 'Atomic Habits', 'author': 'James Clear'},
    'book_2': {'title': 'Ulysses', 'author': 'James Joyce'},
    'book_3': {'title': 'To Kill a Mockingbird', 'author': ' Harper Lee'},
    'book_4': {'title': 'Beloved', 'author': 'Toni Morrison'},
    'book_5': {'title': 'Jane Eyre', 'author': 'Charlotte Brontë'},
    'book_6': {'title': ' In Search of Lost Time', 'author': 'Marcel Proust'}
}

class List_Book(str,Enum):
    book_1="book_1"
    book_2="book_2"
    book_3="book_3"
    book_4="book_4"
    book_5="book_5"
    book_6="book_6"

@app.get("/books")
def Books_name():
    return BOOKS

@app.get("/{one_book}")
def Show_title(one_book:List_Book):
    return(BOOKS[one_book])
from fastapi import FastAPI
from typing import Optional
app=FastAPI()
#skip book
BOOKS = {
    'book_1': {'title': 'Atomic Habits', 'author': 'James Clear'},
    'book_2': {'title': 'Ulysses', 'author': 'James Joyce'},
    'book_3': {'title': 'To Kill a Mockingbird', 'author': ' Harper Lee'},
    'book_4': {'title': 'Beloved', 'author': 'Toni Morrison'},
    'book_5': {'title': 'Jane Eyre', 'author': 'Charlotte Brontë'},
    'book_6': {'title': ' In Search of Lost Time', 'author': 'Marcel Proust'}
}

@app.get('/BOOKS/skip_book')
def Skip_book(skip_book: Optional[str]= None):
    new_book = BOOKS.copy()
    del new_book[skip_book]
    return new_book











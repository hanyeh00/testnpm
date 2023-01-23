from fastapi import FastAPI
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
def Skip_book(skip_book: str = "book_1"):
    BOOKS.pop(skip_book)
    return BOOKS











from fastapi import  FastAPI
app=FastAPI()

BOOKS = {
    'book_1': {'title': 'Atomic Habits', 'author': 'James Clear'},
    'book_2': {'title': 'Ulysses', 'author': 'James Joyce'},
    'book_3': {'title': 'To Kill a Mockingbird', 'author': ' Harper Lee'},
    'book_4': {'title': 'Beloved', 'author': 'Toni Morrison'},
    'book_5': {'title': 'Jane Eyre', 'author': 'Charlotte Brontë'},
}
@app.get("/BOOK")
def Get_Books():
    return (BOOKS)
@app.put("/update_book")
def update_Book(title,authur):
    Current_book_id=input("number of book shelf?")
    BOOKS[f'book_{Current_book_id}']={'title':title , 'author':authur }
    return BOOKS

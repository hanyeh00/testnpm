from fastapi import FastAPI
app=FastAPI()

BOOKS = {
    'book_1': {'title': 'Atomic Habits', 'author': 'James Clear'},
    'book_2': {'title': 'Ulysses', 'author': 'James Joyce'},
    'book_3': {'title': 'To Kill a Mockingbird', 'author': ' Harper Lee'},
    'book_4': {'title': 'Beloved', 'author': 'Toni Morrison'},
    'book_5': {'title': 'Jane Eyre', 'author': 'Charlotte Brontë'},
}


@app.get("/books")
def Books_all():
    return BOOKS


@app.post("/book_add")
def Add_book(title, author):
    Current_book_id = 0
    if len(BOOKS) > 0:
        for i in BOOKS.keys():
            x = int(i.split('_')[-1])
            Current_book_id=x+1
    BOOKS[f'book_{Current_book_id}']= {"title":title,"author":author}
    return BOOKS




import main

def search_year():
    ano = int(input("Digite o ano do livro: "))

    search = {
        "ano": ano
    }

    db = main.connect_db()
    books = db.livros.find(search)

    for book in books:
        print(book)

def search_year_author():
    autor = input("Digite o nome do autor: ")
    ano = int(input("Digite o ano do livro: "))

    search = {
        "$and": [
            {
                "autor": autor,
            },
            {
                "ano": ano
            }
        ]
    }

    db = main.connect_db()
    books = db.livros.find(search)

    for book in books:
        print(book)

def search_author_title():
    autor = input("Digite o nome do autor: ")
    titulo = input("Digite o título do livro: ")

    search = {
        "$or": [
            {
                "autor": autor,
            },
            {
                "titulo": titulo
            }
        ]
    }
    db = main.connect_db()
    books = db.livros.find(search)

    for book in books:
        print(book)


while True:
    print(" Menu ")
    print(" 1- Procura livro por ano: ")
    print(" 2- Procurar livro por ano e autor: ")
    print(" 3- Procurar livro por autor ou titulo: ")
    print(" 4- Inserir novo livro: ")
    print(" 5- Editar livro: ")
    print(" 6- Remover livro: ")
    print(" 7- Sair ")

    option = input("Digite a opção: ")

    if option == "1":
        search_year()
    elif option == "2":
        search_year_author()
    elif option == "3":
        search_author_title()

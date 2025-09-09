import pymysql.cursors
from datetime import datetime
 
def connection():
    return pymysql.connect(host='localhost',
                             user='root',
                             password='password',
                             database='biblioteca',
                             cursorclass=pymysql.cursors.DictCursor)
 
def inserir_aluno():
    nome = input("Digite o nome do aluno: ")
    email = input("Digite o e-mail do aluno: ")
    data_nascimento = input("Digite a data de nascimento (YYYY-MM-DD): ")
 
    sql = "INSERT INTO alunos (nome, email, data_nascimento) VALUES (%s, %s, %s)"
 
    connect = connection()
    cursor = connect.cursor()
    cursor.execute(sql, (nome, email, data_nascimento))
    connect.commit()
 
    print("Aluno Inserido com Sucesso!")
 
def inserir_livro():
    titulo = input("Digite o titulo do livro: ")
    autor = input("Digite o autor do livro: ")
    ano_publicacao = input("Digite o ano da publicação: ")
 
    sql = "INSERT INTO livros (titulo, autor, ano_publicacao) VALUES (%s, %s, %s)"
 
    connect = connection()
    cursor = connect.cursor()
    cursor.execute(sql, (titulo, autor, ano_publicacao))
    connect.commit()
 
    print("Livro inserido com sucesso!")
 
def menu():
    print("----- MENU -----")
    print("1. Inserir Aluno")
    print("2. Inserir Livro")
    print("3. Emprestar Livro")
    print("4. Sair")
 
    return input("Digite a opção desejada: ")
 
def pegar_livro_id_por_titulo(titulo):
    sql = "SELECT livro_id FROM livros WHERE titulo = %s"
    
    connect = connection()
    cursor = connect.cursor()
    cursor.execute(sql, (titulo))
    return cursor.fetchone()
 
def pegar_aluno_id_por_email(email):
    sql = "SELECT aluno_id FROM alunos WHERE email = %s"
 
    connect = connection()
    cursor = connect.cursor()
    cursor.execute(sql, (email))
    return cursor.fetchone()
 
def emprestar_livro():
    nome_livro = input("Digite o nome do livro: ")
    email = input("Digite o e-mail do aluno: ")
    data_emprestimo = datetime.now().date()
 
    livro = pegar_livro_id_por_titulo(nome_livro)
    aluno = pegar_aluno_id_por_email(email)
 
    sql = "INSERT INTO emprestimo_livros (aluno_id, livro_id, data_emprestimo) VALUES (%s, %s, %s)"
    connect = connection()
    cursor = connect.cursor()
    cursor.execute(sql, (aluno['aluno_id'], livro['livro_id'], data_emprestimo))
    connect.commit()
 
    print("Emprestimo gerado com sucesso!")
 
while True:
    opcao = menu()
 
    if opcao == "1":
        inserir_aluno()
    elif opcao == "2":
        inserir_livro()
    elif opcao == "3":
        emprestar_livro()
    elif opcao == "4":
        print("Até logo...")
        break
    else:
        print("Opção desconhecida!")
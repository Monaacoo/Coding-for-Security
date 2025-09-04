import pymysql.cursors

def connection():
    return pymysql.connect(host='localhost',
                             user='root',
                             password='password',
                             database='lunabank',
                             cursorclass=pymysql.cursors.DictCursor)


get_connection = connection()

try:
    with get_connection.cursor() as cursor:
        encrypted_data = "SELECT * FROM CreditCards;"
        cursor.execute(encrypted_data)
        encrypted = cursor.fetchall()
        print("Dados Criptografados: ", encrypted)

        decrypted_data = "SELECT * FROM CreditCardsTrue;"
        cursor.execute(decrypted_data)
        decrypted = cursor.fetchall()
        print("Dados Descriptografados: ", decrypted)
finally:
    get_connection.close()
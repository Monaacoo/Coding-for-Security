from cypher import Crypt
import pymysql.cursors

CHAVE_CRIPTOGRAFIA = "RANSOWAREANONYMO"

crypt = Crypt()

def connection():
    return pymysql.connect(host='localhost',
                             user='root',
                             password='password',
                             database='lunabank',
                             cursorclass=pymysql.cursors.DictCursor)

results = []

def insert():
    results = []

    conn = connection()
    try:
        with conn.cursor() as cursor:
            select = "SELECT * FROM CreditCards;"
            cursor.execute(select)
            encrypted = cursor.fetchall()

            for row in encrypted:
                decrypted = {
                    "CardNumber": crypt.decrypt(row["CardNumber"], CHAVE_CRIPTOGRAFIA),
                    "CardHolderName": crypt.decrypt(row["CardHolderName"], CHAVE_CRIPTOGRAFIA),
                    "ExpirationDate": crypt.decrypt(row["ExpirationDate"], CHAVE_CRIPTOGRAFIA),
                    "CVV": crypt.decrypt(row["CVV"], CHAVE_CRIPTOGRAFIA),
                    "BillingAddress": crypt.decrypt(row["BillingAddress"], CHAVE_CRIPTOGRAFIA),
                    "CreditLimit": row["CreditLimit"],
                    "BankName": crypt.decrypt(row["BankName"], CHAVE_CRIPTOGRAFIA)
                }

                results.append(decrypted)

                inserts = "INSERT INTO CreditCardsTrue (CardNumber, CardHolderName, ExpirationDate, CVV, BillingAddress,CreditLimit, BankName)VALUES (%(CardNumber)s, %(CardHolderName)s, %(ExpirationDate)s, %(CVV)s,%(BillingAddress)s, %(CreditLimit)s, %(BankName)s)"
                cursor.execute(inserts, decrypted)

            conn.commit()


    finally:
        conn.close()

    return results

dados = insert()
print (dados)


# criptografphed = crypt.encrypt("123456", CHAVE_CRIPTOGRAFIA)
# print(crypt.decrypt(criptografphed, CHAVE_CRIPTOGRAFIA))

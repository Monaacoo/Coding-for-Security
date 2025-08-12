import requests

url_base = "https://pix-api-simulator-cc50fa0d09e3.herokuapp.com/"

def gerar_token():
    dados = {
        "username": 562002,
        "password": "fH7@tJ4p"
    }
    response = requests.post(url_base + "login", json=dados)

    return response.json()['token']

def enviar_pix(origem, chave_destino, valor, token):

    endpoint = f"transfere/origem/{origem}/destino/{chave_destino}/valor/{valor}"

    headers = {
        "Authorization": f"Bearer {token}"
    }
    response = requests.post(url_base + endpoint, headers=headers)
    print(response.text)

token = gerar_token()
print(token)
enviar_pix("b9c0d1e2-3f4a-4b5c-6d7e-8f9a0b1c2d3e","e1f2a3b4-5d6e-4f7a-8b9c-0d1e2f3a4b5c", 10000000, token)
# Checkpoint 1

Esta pasta contém o código necessário para o Checkpoint 1. Siga atentamente os detalhes para executar o código e realizar a descriptografia dos dados.

## Código SQL

No arquivo `datacard.sql`, você encontrará toda a estrutura para a criação das tabelas dos dados criptografados que precisarão ser descriptografados.

## Bibliotecas Necessárias

A pasta já inclui a estrutura de arquivos e bibliotecas necessárias. Para instalá-las em sua máquina, utilize os seguintes comandos:

**No Unix (Linux e macOS):**

```bash
source mysql/bin/activate
pip install -r requirements.txt
```

**No Windows:**

```cmd
.\mysql\Scripts\activate
pip install -r requirements.txt
```

## Classe de Descriptografia

Para descriptografar os dados, você precisará utilizar a classe disponível no arquivo `cypher.py`. Siga as instruções abaixo para utilizar a classe. A chave de descriptografia é: **RANSOWAREANONYMO**.

**Exemplo de uso:**

```python
from cypher import Crypt

CHAVE_CRIPTOGRAFIA = "RANSOWAREANONYMO"
crypt = Crypt()

# Exemplo de criptografia
informacao_criptografada = crypt.encrypt("123456", CHAVE_CRIPTOGRAFIA)

# Exemplo de descriptografia
informacao_descriptografada = crypt.decrypt(informacao_criptografada, CHAVE_CRIPTOGRAFIA)
```

Para descriptografar uma informação, use o seguinte código:

```python
from cypher import Crypt

CHAVE_CRIPTOGRAFIA = "RANSOWAREANONYMO"
crypt = Crypt()

informacao_descriptografada = crypt.decrypt(string_criptografada, CHAVE_CRIPTOGRAFIA)
```

---

Certifique-se de seguir todas as instruções com cuidado para garantir que o processo de descriptografia seja realizado corretamente. Se tiver alguma dúvida ou problema, não hesite em pedir ajuda!

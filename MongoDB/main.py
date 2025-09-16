import pymongo

def connect_db():
    client = pymongo.MongoClient("mongodb://localhost:27017")
    return client.biblioteca

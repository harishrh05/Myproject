from fastapi import FastAPI

api = FastAPI()

@api.get(path="/")
def status():
    return {
        'status': 'okay'
    }

@api.get('/ping')
def pong():
    return {'ping':'pong'}

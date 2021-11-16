from typing import List

import uvicorn

from connect.connect import SessionLocal
from fastapi import Depends, FastAPI
from schemas import Province
from query import query_province
from sqlalchemy.orm import Session

app = FastAPI()


def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()


@app.get("/provinces/")
def read_users(db: Session = Depends(get_db)):
    data = query_province.get_province(db)
    return {
        "success": True,
        "data": data
    }


if __name__ == '__main__':
    uvicorn.run(app, host="192.168.1.3", port=8000)

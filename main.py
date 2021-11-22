import uvicorn

from connect.connect import SessionLocal
from fastapi import Depends, FastAPI
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


@app.get("/provinces/geo_topo/")
def read_province_geo_topo(name_province: str, db: Session = Depends(get_db)):
    data = query_province.get_province_geographical_location_topography(db, name_province)
    return {
        "success": True,
        "data": data
    }


@app.get("/provinces/climate")
def read_province_climate(name_province: str, db: Session = Depends(get_db)):
    data = query_province.get_province_climate(db, name_province)
    return {
        "success": True,
        "data": data
    }


if __name__ == '__main__':
    uvicorn.run(app, host="192.168.1.7", port=8080)

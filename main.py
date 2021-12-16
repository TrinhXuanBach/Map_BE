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


@app.get("/provinces/human_resource")
def read_human_resource(name_province: str, db: Session = Depends(get_db)):
    data = query_province.get_human_resource(db, name_province)
    return {
        "success": True,
        "data": data
    }


@app.get("/provinces/infrastructure")
def read_infrastructure(name_province: str, db: Session = Depends(get_db)):
    data = query_province.get_infrastructure(db, name_province)
    return {
        "success": True,
        "data": data
    }


@app.get("/provinces/system_training")
def get_system_training(name_province: str, db: Session = Depends(get_db)):
    data = query_province.get_education_and_training_system(db, name_province)
    return {
        "success": True,
        "data": data
    }


@app.get("/provinces/reference_investment_cost")
def get_reference_investment_cost(name_province: str, db: Session = Depends(get_db)):
    data = query_province.get_reference_investment_cost(db, name_province)
    return {
        "success": True,
        "data": data
    }


if __name__ == '__main__':
    uvicorn.run(app, host="0.0.0.0", port=8080)

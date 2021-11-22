from sqlalchemy.orm import Session
from base import province


def get_province(db: Session):
    return db.query(province.Province).all()


def get_province_geographical_location_topography(db: Session, name_province: str):
    return db.query(province.GeographicalLocationTopography) \
        .filter(province.GeographicalLocationTopography.province == name_province).first()


def get_province_climate(db: Session, name_province: str):
    return db.query(province.Climate).filter(province.Climate.name_province == name_province).first()

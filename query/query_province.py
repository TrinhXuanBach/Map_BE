from sqlalchemy.orm import Session
from base import province


def get_province(db: Session):
    return db.query(province.Province).all()

from sqlalchemy.orm import Session
from base import province


def get_province(db: Session):
    return db.query(province.Province).all()


def get_province_geographical_location_topography(db: Session, name_province: str):
    return db.query(province.GeographicalLocationTopography) \
        .filter(province.GeographicalLocationTopography.province == name_province).first()


def get_province_climate(db: Session, name_province: str):
    return db.query(province.Climate).filter(province.Climate.name_province == name_province).first()


def get_human_resource(db: Session, name_province: str):
    return db.query(province.HumanResource).filter(province.HumanResource.name_province == name_province).first()


def get_infrastructure(db: Session, name_province: str):
    return db.query(province.Infrastructure).filter(province.Infrastructure.name_province == name_province).first()


def get_education_and_training_system(db: Session, name_province: str):
    return db.query(province.SystemTraining).filter(province.SystemTraining.name_province == name_province).first()


def get_reference_investment_cost(db: Session, name_province: str):
    return db.query(province.ReferenceInvestmentCosts)\
        .filter(province.ReferenceInvestmentCosts.name_province == name_province).first()

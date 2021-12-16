from sqlalchemy import Column, ForeignKey, VARCHAR, TEXT, Float

from connect.connect import Base


class Province(Base):
    __tablename__ = "Province"

    name = Column(VARCHAR(255), primary_key=True)
    lat = Column(Float)
    longt = Column(Float)


class GeographicalLocationTopography(Base):
    __tablename__ = "geographical_location_topography"
    province = Column(VARCHAR(50), ForeignKey("Province.name"), primary_key=True, index=True)
    critical_position = Column(TEXT)
    topography_geology = Column(TEXT)


class Climate(Base):
    __tablename__ = "climate"
    name_province = Column(VARCHAR(50), ForeignKey("Province.name"), primary_key=True)
    generals_feature = Column(TEXT)
    annual_average_temperature = Column(TEXT)
    annual_average_humidity = Column(TEXT)
    rain_per_year = Column(TEXT)


class Area(Base):
    __tablename__ = "area"
    name_province = Column(VARCHAR(50), ForeignKey("Province.name"), primary_key=True)
    area_of_whole_province = Column(Float)
    industry_land = Column(Float)
    commercial_land = Column(Float)
    services_land = Column(Float)
    area_agricultural_land = Column(Float)
    area_forestry_land = Column(Float)
    area_fishery_land = Column(Float)


class HumanResource(Base):
    __tablename__ = "human_resource"
    name_province = Column(VARCHAR(256), ForeignKey("Province.name"), primary_key=True)
    population = Column(VARCHAR(256))
    trained_workers = Column(VARCHAR(256))
    untrained_workers = Column(VARCHAR(256))


class Infrastructure(Base):
    __tablename__ = "infrastructure"
    name_province = Column(VARCHAR(256), primary_key=True)
    airport = Column(TEXT)
    seaport = Column(TEXT)
    riverport = Column(TEXT)
    electricity_distribution_system = Column(TEXT)
    water_supply_system = Column(TEXT)
    waste_water_treatment_system = Column(TEXT)
    transportation = Column(TEXT)
    post_and_telecommunication = Column(TEXT)
    development_center = Column(TEXT)


class SystemTraining(Base):
    __tablename__ = "education_and_training_system"
    name_province = Column(VARCHAR(256), primary_key=True)
    system_school = Column(TEXT)


class ReferenceInvestmentCosts(Base):
    __tablename__ = "reference_investment_costs"
    name_province = Column(VARCHAR(256), primary_key=True)
    electricity_price = Column(TEXT)
    water_price = Column(TEXT)
    gas_price = Column(TEXT)
    rent_office_premises_factory = Column(TEXT)
    rental_price_houses_and_apartments = Column(TEXT)
    construction_costs = Column(TEXT)
    price_workers = Column(TEXT)
    transport_costs = Column(TEXT)
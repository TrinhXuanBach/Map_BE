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

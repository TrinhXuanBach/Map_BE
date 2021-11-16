from sqlalchemy import Boolean, Column, ForeignKey, Integer, String, Float, VARCHAR
from sqlalchemy.orm import relationship

from connect.connect import Base


class Province(Base):
    __tablename__ = "Province"

    name = Column(VARCHAR(255), primary_key=True)
    lat = Column(Float)
    longt = Column(Float)

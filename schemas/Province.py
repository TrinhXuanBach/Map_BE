from pydantic import BaseModel


class Province(BaseModel):
    name: str
    lat: float
    longt: float

    class Config:
        orm_mode = True


class GeographicalLocationTopography(BaseModel):
    name: str
    critical_position: str
    topography_geology: str

    class Config:
        orm_mode = True


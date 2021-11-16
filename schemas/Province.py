from typing import List, Optional
from pydantic import BaseModel


class Province(BaseModel):
    name: str
    lat: float
    longt: float

    class Config:
        orm_mode = True

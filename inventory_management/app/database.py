from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
import os

# SQLALCHEMY_DATABASE_URL = "postgresql://admin:E5OJuKRE14iotwfsvHwJeqsjaKK1eKmO@dpg-cq0nb2aju9rs73b0500g-a.oregon-postgres.render.com/part2"
# SQLALCHEMY_DATABASE_URL=os.getenv("DATABASE_URL")
SQLALCHEMY_DATABASE_URL ="postgresql://ckorir_user:ScgiUWjf1M0wI83yqlwli88MtzFV9T3Q@dpg-crghdhtsvqrc73f231ug-a.oregon-postgres.render.com/ckorir"


engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()

from database.db import Base
from sqlalchemy import Column
from sqlalchemy.sql.sqltypes import Integer,String,Boolean




class Db_user(Base):
    __tablename__= 'Users'
    id=(Column(Integer,primary_key=True,index=True))
    name=(Column(String))
    bool=(Column(Boolean))
    emails=(Column(String))
    password=(Column(String))
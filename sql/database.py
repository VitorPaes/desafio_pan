import pandas as pd
import sqlite3

def connect():
    conn = sqlite3.connect('sql/base_bacen.sqlite')
    return conn

def query(conn, sql_query):
    try:
        df = pd.read_sql(sql_query, con=conn)
    except TypeError:
        df = None

    return df

import sqlite3
import pandas as pd

database_path = "data/data.db"
conn = sqlite3.connect(database_path)
query = open('data/fetch_all.sql','r').read()
df = pd.read_sql_query(query, conn)
conn.close()

df.head(), df.info()

from psycopg2 import connect

conn = connect( 
    dbname = "<nome_db>",
    user = "<nome_user>",
    host = "<ip_address>",
    password = "<senha>"
)
cursor = conn.cursor()
cursor.execute(f"SELECT * FROM my_table;")

for i, record in enumerate(cursor):
    print("\n", type(record))
    print(record)

cursor.clode()
conn.close()

from psycopg2 import connect

conn = connect( 
    dbname = "test_db",
    user = "test",
    host = "pg-container",
    password = "test"
)
cursor = conn.cursor()
cursor.execute(f"SELECT * FROM my_table;")

for i, record in enumerate(cursor):
    print("\n", type(record))
    print(record)

cursor.clode()
conn.close()

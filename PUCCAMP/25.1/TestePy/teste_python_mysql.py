import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Jppm2006",
    database="projeto_integrador_fase2"
)
print(mydb)

mycursor = mydb.cursor()

nome = input("nome: ")
senha = input("senha: ")
sql = "INSERT INTO usuarios_pi (nome,senha) VALUES (%s, %s)"
val = (nome,senha)
mycursor.execute(sql,val)

mydb.commit()

print(mycursor.rowcount, "record inserted.")



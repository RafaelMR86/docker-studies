#Criar e executar um container para o banco de dados PostgreSQL!
docker run -d -p 5432:5432 -e POSTGRES_USER=<nome_user> -e POSTGRES_PASSWORD=<senha> -e POSTGRES_DB=<nome_db> --name pg-container postgres

#Descubro o ID do container trabalhado
docker ps -a

#executando o container na área de script
docker exec -it pg-container /bin/bash

#Logar no postgres dentro do container 
psql -U dc -d dc_db

#Criando a tabela de teste
CREATE TABLE my_table (
    id INT PRIMARY KEY NOT NULL,
    value TEXT NOT NULL
);

#Para inserir dados de teste
INSERT INTO
    my_table(id, value)
VALUES
    (1, 'DADO TEST 1'),
    (2, 'DADO TEST 3'),
    (3, 'VAMO INVADI');

#saindo do db
\q

#saindo da imagem
exit

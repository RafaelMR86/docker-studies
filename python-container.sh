# Pegar o IP do container de postgres
docker inspect pg-container

#compila a imagem do script python

docker build -t python-pg-script .

#executa o container python baseado na imagem criada
docker run --name python-test python-pg-script

###Imagem base
FROM python:3.7

###Alteração sobre a imagem base

#Seta o diretõrio de trabalho
WORKDIR /code

#instala dep do python

RUN pip3 install psycopg2

#copia o codigo de py pra dentro do container 
COPY list-data.py /code/

#excecuta o nosso código py 

CMD ["python", "list-data.py"]
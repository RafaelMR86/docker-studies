###Imagem base
FROM python:3.7

###Alterações sobre a imagem base
# Seta o diretõrio
WORKDIR /code

#instalar dep do py
RUN pip3 install psycopg2

#copia o cõdigo py para o container
COPY list-data-table.py /code/

#executa o código
CMD ["python", "list-data-table.py"]
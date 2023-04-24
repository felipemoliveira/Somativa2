# Imagem base
#FROM python:3.9-slim-buster
FROM ubuntu

RUN apt update
RUN apt install python3-pip -y
RUN pip3 install Flask

# Define o diretório de trabalho dentro da imagem
WORKDIR /app

# Copia o arquivo requirements.txt para o diretório /app
#COPY requirements.txt .

# Instala as dependências da aplicação
#RUN pip install --no-cache-dir -r requirements.txt

# Copia o resto do código fonte para o diretório /app
COPY . .

# Define a porta que a aplicação irá utilizar
EXPOSE 5000

# Define o comando que será executado quando a imagem for iniciada
#CMD ["python", "./app.py"]
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
